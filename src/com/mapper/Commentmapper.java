package com.mapper;

import com.vo.Comment;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface Commentmapper {
    /*----comment-------*/
    @Select("select * from comment where CommentisCheck = 1")
    public List<Comment> getAll();

    @Insert({"insert into comment values(#{a.CommentID},#{a.CommentContent},#{a.CommentDate},#{a.CommentisCheck},#{a.NewsID},#{a.UserID})"})
    public void insertcot(@Param("a") Comment a);

    @Select("select max(CommentID) from comment")
    public int getcommentID();

    @Select("select * from comment where CommentisCheck = 1 and NewsID=#{a} and UserID<>#{b}")
    public List<Comment> selectbycomid(@Param("a") int a,@Param("b") int b);

    @Select("select * from comment where CommentisCheck = 1 and NewsID=#{a} and UserID=#{b}")
    public List<Comment> selectbycomid1(@Param("a") int a,@Param("b") int b);

    //删除
    @Delete("delete from comment where CommentID = #{a}")
    int deletecomment(int a);


    /*----com_news-------*/
    @Insert({"insert into com_and_news(CommentID,NewsID) values(#{a},#{b})"})
    public void insertcom_news(@Param("a") int a, @Param("b") int b);

    /*----com_user-------*/
    @Insert({"insert into com_and_user(CommentID,UserID) values(#{a},#{b})"})
    public void insertcom_user();


    /*De5picablE---举报评论*/
    @Update("update comment set CommentisCheck = 0 where CommentID = #{CommentID}")
    public void updateCommentisCheck(@Param("CommentID") int CommentID);

    /*De5picablE--输出全部“未审核”评论给管理员*/
    @Select("select * from comment where CommentisCheck = 0")
    public List<Comment> selectAllUncheckComment();
    
    /*风居住过的街道--修改评论的“审核状态”*/
    @Update("update comment set CommentisCheck = 1  where CommentID = #{id}")
    public void passComment(int id);
}
