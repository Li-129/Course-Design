package com.service;

import com.mapper.Commentmapper;
import com.vo.Comment;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class CommentService {
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

    public List<Comment> getall() {
        session = init();
        List<Comment> fi = null;
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            fi = mapper.getAll();
            session.commit();
        }
        session.close();
        return fi;
    }
    public void insertcomment(Comment a) {
        session = init();
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            mapper.insertcot(a);
            session.commit();
        }
        session.close();
    }
    public int commentid() {
        session = init();
        int id=0;
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            id=mapper.getcommentID();
            session.commit();
        }
        session.close();
        return id;
    }
    public void insertcomment_news(int a,int b) {
        session = init();
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            mapper.insertcom_news(a,b);
            session.commit();
        }
        session.close();
    }
    public void insertcomment_user(int a,int b) {
        session = init();
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            mapper.insertcom_news(a,b);
            session.commit();
        }
        session.close();
    }
    public void deletecomment(int a) {
        session = init();
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            mapper.deletecomment(a);
            session.commit();
        }
        session.close();
    }

    /*De5picablE--更新评论审核情况*/
    public void updateCommentisCheck(int CommentID) {
        session = init();
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            mapper.updateCommentisCheck(CommentID);
            session.commit();
        }
        session.close();
    }
    /*De5picablE--显示全部未审核评论*/
    public List<Comment> selectAllUncheckComment() {
        session = init();
        List<Comment> list = null;
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            list = mapper.selectAllUncheckComment();
            session.commit();
        }
        session.close();
        return list;
    }
    /*风居住过的街道--修改评论的审核状态*/
    public void passCommentis(int id){
        session = init();
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            mapper.passComment(id);
            session.commit();
        }
        session.close();
    }
    public List<Comment> selectbycomid(int a,int c) {
        session = init();
        List<Comment> fi = null;
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            fi = mapper.selectbycomid(a,c);
            session.commit();
        }
        session.close();
        return fi;
    }
    public List<Comment> selectbycomid1(int a,int c) {
        session = init();
        List<Comment> fi = null;
        if (session!=null) {
            Commentmapper mapper = session.getMapper(Commentmapper.class);
            fi = mapper.selectbycomid1(a,c);
            session.commit();
        }
        session.close();
        return fi;
    }
}
