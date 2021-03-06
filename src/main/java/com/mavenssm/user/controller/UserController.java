package com.mavenssm.user.controller;

import com.mavenssm.user.entity.User;
import com.mavenssm.user.service.IUserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import utils.Md5SaltTool;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * UserController
 */
@Controller
@RequestMapping("/user")
public class UserController {
    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private IUserService userService;

    @RequestMapping("/showUser")
    public String showUser(HttpServletRequest request, Model model) {
        log.info("查询所有用户信息");
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "showUser";
    }

    /**
     * 登录页面访问
     *
     * @return 登录页面
     */
    @RequestMapping("/loginPage")
    public String loginPage() {
        return "login";
    }

    /**
     * 登录校验
     *
     * @param user  用户
     * @param model 模型
     * @return 登录成功/失败页面
     * @throws Exception
     */
    @RequestMapping("/login")
    public String login(User user, Model model) throws Exception {

        log.info("用户登录后台校验");

        String password = user.getUserPwd();
        user = userService.checkLogin(user.getUserName().trim(), user.getUserPwd().trim());
        //校验密码是否一致
        if (user != null) {
            String pwdInDb = user.getUserPwd();
            boolean isRight = Md5SaltTool.validPassword(password, pwdInDb);
            if (isRight) {
                // 登录成功
                model.addAttribute(user);
                return "welcome";
            } else
                return "error";
        } else
            return "error";
    }

    @RequestMapping("/registerPage")
    public String registerPage() {
        return "register";
    }

    /**
     * 用户注册
     *
     * @param user  用户
     * @param model 模型
     * @return 主页
     * @throws Exception
     */
    @RequestMapping("/register")
    public String register(User user, Model model) throws Exception {
        log.info("用户注册");
        if (user.getUserName().trim().length() > 0 || user.getUserPwd().trim().length() > 0 || user.getUserPhone().trim().length() > 0 || user.getUserEmail().trim().length() > 0) {
            if (userService.isUsernameExist(user) != null) {
                //加密加盐处理
                String encryptedPwd = Md5SaltTool.getEncryptedPwd(user.getUserPwd());
                user.setUserPwd(encryptedPwd);
                userService.userRegister(user);
                return "welcome";
            }
        } else {
            return "error";
        }
        return "error";
    }

    @RequestMapping("/findPwdPage")
    public String findPwd() throws Exception {
        return "findPwdPage";
    }

    /**
     * 根据注册邮箱找回账号密码
     *
     * @param emil  注册邮箱
     * @param model 模型
     * @return findPwd
     * @throws Exception
     */
    @RequestMapping("/findPwd")
    public String findPwd(String emil, Model model) throws Exception {
        log.info("根据注册邮箱找回账号密码");
        userService.findPwd(emil);
        return "findPwd";
    }

}
