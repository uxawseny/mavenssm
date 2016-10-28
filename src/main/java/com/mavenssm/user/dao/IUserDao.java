package com.mavenssm.user.dao;

import com.mavenssm.user.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * UserDao
 */
@Repository("userDao")
public interface IUserDao {

    /**
     * 查询所有用户
     */
    List<User> getAllUser();

    /**
     * 按照用户名查询是否有该用户
     */
    User getUserByName(String userName);

    /**
     * 增加用户
     *
     * @param user 用户
     */
    void addUser(User user);

    /**
     * 查询用户名/邮箱账号是否已经存在
     *
     * @param user 用户
     */
    List<User> queryUsername(User user);

    /**
     * 根据邮箱找回用户密码
     *
     * @param Email 用户邮箱
     * @return 账号密码
     */
    String getPwdByEmail(String Email);


}
