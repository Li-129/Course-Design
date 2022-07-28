package com.mapper;

import com.vo.News;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface Newsmapper {
    @Insert({"insert into news values(#{n.NewsID},#{n.NewsTitle},#{n.NewsDate},#{n.NewsContent},#{n.NewsColumn},#{n.NewsCheck})"})
    public void insert(@Param("n") News n);
    //lol

    @Select("Select * from news where NewsCheck = 0")
    public List<News> selectAllNews();

    @Select("Select NewsID from news where NewsTitle = #{NewsTitle}")
    public int selectNewsID(@Param("NewsTitle") String NewsTitle);

    @Select("Select NewsContent from news where NewsID =#{NewsID}")
    public String selectContent(int id);

    @Update("update news SET NewsCheck = 1 where NewsID=#{id}")
    public int changeCheck(int id);

    //李文阳
    //where NewsCheck=true
    @Select("select * from news where NewsCheck=true")
    public List<News>show();
    //时政
    @Select("select * from news where NewsCheck=true and NewsColumn=1")
    public List<News>show1();
    //实事
    @Select("select * from news where NewsCheck=true and NewsColumn=2")
    public List<News>show2();
    //体育
    @Select("select * from news where NewsCheck=true and NewsColumn=3")
    public List<News>show3();
    //经济
    @Select("select * from news where NewsCheck=true and NewsColumn=4")
    public List<News>show4();
    //文化
    @Select("select * from news where NewsCheck=true and NewsColumn=5")
    public List<News>show6();
    @Select("	select * from news left join newspic ON news.NewsID=newspic.NewsID  ")
    public List<News> selAll();

    @Select("select * from news where NewsID=#{NewsID}")
    News findByID(Integer NewsID);
//////////////////////////llllllllwy//////////

    //曹富钧添加以下


    /*
     * 曹富钧代码段：用于实现按照相关内容查询的 MySQL处理
     *
     */
    @Select("Select * from news  where  NewsTitle LIKE CONCAT('%',#{relation},'%') and NewsCheck = 1 ")
    public  List<News> findNews(@Param("relation") String relation);

    //潘怡安添加，用于查询新闻标题
    @Select("Select NewsTitle from news where NewsID =#{NewsID}")
    public String selectTitle(int id);

    @Delete("delete from news where NewsID = #{id}")
    int deleteNews(int id);

    @Select("Select count(*) from news where NewsTitle = #{title}")
    public int selectSameTitle(@Param("title") String title);

}
