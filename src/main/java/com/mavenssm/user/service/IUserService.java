package com.mavenssm.user.service;

import com.mavenssm.user.entity.User;

import java.util.List;

/**
 * IUserService 接口
 */
public interface IUserService {
    /**
     * 查询所有用户信息
     *
     * @return 用户信息列表
     */
    List<User> getAllUser();

    /**
     * 用户登录
     *
     * @param userName 用户名
     * @param userPwd  用户密码
     * @return 用户信息
     */
    User checkLogin(String userName, String userPwd);

    /**
     * 用户注册
     *
     * @param user 用户
     */
    void userRegister(User user);

    /**
     * 根据注册邮箱找回账户密码
     *
     * @param email 用户邮箱
     * @return 账户密码
     */
    String findPwd(String email);


}
