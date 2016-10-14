package com.mavenssm.user.dao;

import com.mavenssm.user.entity.User;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * UserDao
 */
@Repository
public interface UserDao {
    @Results(
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
            })
    @Select("SELECT user_name, user_phone FROM t_user")
    List<User> getAllUser();


}
