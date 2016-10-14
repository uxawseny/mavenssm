package com.mavenssm.user.service;

import com.mavenssm.user.entity.User;

import java.util.List;

/**
 * IUserService 接口
 */
public interface IUserService {
    /**
     * 查询所有用户信息
     * @return 用户信息列表
     */
    List<User> getAllUser();
}
