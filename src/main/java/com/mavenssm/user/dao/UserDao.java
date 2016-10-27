package com.mavenssm.user.dao;

import com.mavenssm.user.entity.User;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * UserDao
 */
@Repository("userDao")
public interface UserDao {

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
     * 根据邮箱找回用户密码
     *
     * @param Email 用户邮箱
     * @return 账号密码
     */
    String getPwdByEmail(String Email);


}
