package com.mavenssm.user.service;

import com.mavenssm.user.dao.IUserDao;
import com.mavenssm.user.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * UserServiceImpl 实现类
 */
@Service("userService")
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements IUserService {
    @Resource
    private IUserDao userdao;
    private User user;

    /**
     * 查询所有用户信息
     *
     * @return 用户信息列表
     */
    public List<User> getAllUser() {
        return userdao.getAllUser();
    }

    /**
     * 用户登录
     *
     * @param userName 用户名
     * @param userPwd  用户密码
     * @return 用户信息
     */
    public User checkLogin(String userName, String userPwd) {
        user = userdao.getUserByName(userName);
        if (user != null) {
            //if (user.getUserPwd().equals(userPwd))
            return user;
        } else {
            return null;
        }
    }

    /**
     * 用户注册
     *
     * @param user 用户
     */
    @Override
    public void userRegister(User user) {
        userdao.addUser(user);
        // return null;
    }

    /**
     * 用户名/邮箱是否已经存在
     *
     * @param
     */
    @Override
    public List<User> isUsernameExist(User user) {
        List<User> list = userdao.queryUsername(user);
        if (list != null && list.size() > 0) {
            //如果list不为空，则表示有同名存在，返回null.
            return null;
        } else
            return list;

    }

    /**
     * 根据注册邮箱找回账号密码
     *
     * @param email 用户邮箱
     * @return 账号密码
     */
    @Override
    public String findPwd(String email) {
        return userdao.getPwdByEmail(email);
    }
}
