package com.mapper;

import com.vo.User;
import org.apache.ibatis.annotations.*;

import java.util.ArrayList;
import java.util.List;

public interface Usermapper {
    @Select("select * from user where `userAccount`=#{a}")
    public User search(@Param("a") int userAccount);//利用账号搜索user全部属性
    @Select("select * from user")
    public ArrayList<User> searchall();//查询user表中全部
    @Insert({"insert into user values(#{U.userID},#{U.userAccount},#{U.userPassword},#{U.userName},#{U.userSex},#{U.userEmail})"})
    public void insert(@Param("U") User U);//添加用户
    @Select("select * from user")
    List<User> findallUser();//查询user表中全部
    @Update("update user set userPassword =#{userPassword},userName =#{userName},userSex =#{userSex},userEmail =#{userEmail} where userID=#{userID}")
    int UserUpdatebyID( User U);//用户更新自身信息
    @Delete("delete from user where userID=#{0}")
    int UserDeletebyID(String id);//管理员删除用户

    @Select("select * from user where UserID=#{a}")
    public String showusername(Integer a);
    /*    @Select("select * from user where `userAccount`=#{a}")
    public ArrayList<User> searchbyuserAccount(@Param("a") int userAccount);*/
    /*@Select("select userPassword from user where `userAccount`=#{a}")
    public String searchbyUserAccount(@Param("a") int UserAccount);*/

}
