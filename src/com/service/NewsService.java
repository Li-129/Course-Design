package com.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mapper.Newsmapper;
import com.vo.News;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class NewsService {
    private SqlSessionFactory build;
    private SqlSession session=null;

    public SqlSession init() {
        // 业务逻辑的编写
        //1.读取mybatis-config.xml 并运行
        InputStream is;
        try {
            is = Resources.getResourceAsStream("mybatis_config.xml");
            //获取文件
            //2.使用is输入流 创建SessionFactory
            build = new SqlSessionFactoryBuilder().build(is);
            //3.创建数据库链接
            session = build.openSession();

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return session;
    }
    //lol

    public void destory(SqlSession session){
        if(session!=null){
            session.close();
        }
    }

    public void InsertNews(News n) {
        session = init();
        if (session!=null) {
            Newsmapper mapper = session.getMapper(Newsmapper.class);
            mapper.insert(n);
            session.commit();
        }
        session.close();
    }

    public List<News> selectAllNews( ){
        session= init();
        List<News> news = null;
        if(session!=null) {
            Newsmapper newsmapper = session.getMapper(Newsmapper.class);
            news = newsmapper.selectAllNews();
            System.out.println(news);
        }
        destory(session);
        return  news;
    }

    public int selectNewsID(String NewsTitle){
        session = init();
        if(session!=null){
            Newsmapper newsmapper = session.getMapper(Newsmapper.class);
            int NewsID;
            NewsID = newsmapper.selectNewsID(NewsTitle);
            session.commit();
            session.close();
            return NewsID;
        }
        session.close();
        return 0;
    }

    public String selectContent(int id){
        session= init();
        String news = null;
        if(session!=null){
            Newsmapper newsmapper =session.getMapper(Newsmapper.class);
            news = newsmapper.selectContent(id);
            //System.out.println(news);
        }
        destory(session);
        return news;
    }

    public void changeCheck(int id){
        session= init();
        if(session!=null){
            Newsmapper newsmapper = session.getMapper(Newsmapper.class);
            newsmapper.changeCheck(id);
            session.commit();
        }
        destory(session);

    }

    //曹富钧添加以下

    /*
     * 曹富钧 代码段 用于实现新闻按相关内容的查询
     *
     * */
//    public PageInfo<News> findNewsByRelation(String relation, Integer page, Integer limit) {
//        session=init();
//        PageHelper.startPage(page, limit);
//        PageInfo<News> pageinfo=new   PageInfo<>();
//        if(session!=null) {
//            System.out.println("你好，这里在测试");
//            System.out.println(page);
//            System.out.println(limit);
//            Newsmapper newsmapper = session.getMapper(Newsmapper.class);
//            System.out.println(relation);
//            List <News> news = newsmapper.findNews(relation);
//            System.out.println(news);
//            pageinfo = new PageInfo<News>(news);
//            //  PageInfo<News>
//        }
//        session.close();
//
//        return pageinfo;
//
//    }

    public PageInfo<News> findNewsByRelation(String relation,Integer page, Integer limit) {
        session=init();
        Newsmapper newsmapper = session.getMapper(Newsmapper.class);

        PageHelper.startPage(page, limit);
        List<News> ArticleInfo = newsmapper.findNews(relation);
        PageInfo<News>    pageinfo = new PageInfo<News>(ArticleInfo);

        session.close();

        return pageinfo;

    }
    
    //用于查询新闻标题
    public  String selectTitle(int id){
        session= init();
        String news = null;
        if(session!=null){
            Newsmapper newsmapper =session.getMapper(Newsmapper.class);
            news = newsmapper.selectTitle(id);
            //System.out.println(news);
        }
        destory(session);
        return news;
    }
    public void deleteNews(int id){
        session= init();
        if(session!=null){
            Newsmapper newsmapper = session.getMapper(Newsmapper.class);
            newsmapper.deleteNews(id);
            session.commit();
        }
        destory(session);
    }

    public  int selectSameTitle(String title){
        session= init();
        if(session!=null){
            int count = 0;
            Newsmapper newsmapper =session.getMapper(Newsmapper.class);
            count = newsmapper.selectSameTitle(title);
            //System.out.println(news);
            return count;
        }
        destory(session);
        return -1;
    }
}
