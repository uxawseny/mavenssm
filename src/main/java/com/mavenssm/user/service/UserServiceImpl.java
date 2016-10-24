package com.mavenssm.user.service;

import com.mavenssm.user.dao.UserDao;
import com.mavenssm.user.entity.User;
import com.sun.org.apache.bcel.internal.generic.RET;
import com.sun.org.apache.regexp.internal.RE;
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
    private UserDao userdao;
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
     * @param userName 用户名
     * @param userPwd  用户密码
     * @return 用户信息
     */
    public User checkLogin(String userName, String userPwd) {
         user = userdao.getUserByName(userName);{
            if (user != null){
                if (user.getUserPwd().equals(userPwd))
                    return user;
            }
        }
        return null;
    }

    /**
     * 用户注册
     * @param user 用户
     */
    @Override
    public void userRegister(User user) {
        userdao.addUser(user);
    }
}
