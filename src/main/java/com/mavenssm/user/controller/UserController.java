package com.mavenssm.user.controller;

import com.mavenssm.user.entity.User;
import com.mavenssm.user.service.IUserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    @RequestMapping("/login")
    public String login(User user,Model model) throws Exception {
        log.info("用户登录后台校验");
        user = userService.checkLogin(user.getUserName(),user.getUserPwd());
        if (user != null){
            model.addAttribute(user);
            return "welcome";
        }
        return "fail";

    }

}
