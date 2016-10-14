package com.mavenssm.user.service;

import com.mavenssm.user.dao.UserDao;
import com.mavenssm.user.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * UserServiceImpl 实现类
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements IUserService {
    @Resource
    private UserDao userdao;

    /**
     * 查询所有用户信息
     *
     * @return 用户信息列表
     */
    public List<User> getAllUser() {
        return userdao.getAllUser();
    }
}
