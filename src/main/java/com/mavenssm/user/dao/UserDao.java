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
   // @Select("SELECT userName, userPhone FROM User")
    List<User> getAllUser();

    /**
     * 按照用户名查询是否有该用户
     */
   // @Select("SELECT * FROM t_user WHERE user_name=#{userName}")
   /* @Results(
            {
                    @Result(id = true, column = "id", property = "id"),
                    @Result(column = "user_name", property = "userName"),
                    @Result(column = "user_phone", property = "userPhone"),
                    @Result(column = "user_email", property = "userEmail"),
                    @Result(column = "user_pwd", property = "userPwd"),
                    @Result(column = "pwd_salt", property = "pwdSalt"),
                    @Result(column = "create_time", property = "createTime"),
                    @Result(column = "modify_time", property = "modifyTime"),
                    @Result(column = "is_delete", property = "isDelete")
            })*/

    User getUserByName(String userName);

    /**
     * 增加用户
     * @param user 用户
     */
    void addUser(User user);


}
