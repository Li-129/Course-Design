package com.service;

import com.mapper.Usermapper;
import com.vo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public class Userservice {
    private SqlSessionFactory build;
    private SqlSession session=null;
    private Usermapper cm;
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
    public void destory(SqlSession session){
        if(session!=null){
            session.close();
        }
    }
    public User search(int a){
        User ser=null;
        session = init();
        if (session!=null) {
            Usermapper mapper = session.getMapper(Usermapper.class);
            ser=mapper.search(a);
            System.out.print("ser");
            session.commit();
        }
        System.out.println(1);
        return  ser;

    }//利用账号检索，用于登陆
    public ArrayList<User> searchall() {
        ArrayList<User> ser=null;
        session = init();
        if (session!=null) {
            Usermapper mapper = session.getMapper(Usermapper.class);
            ser=mapper.searchall();
            System.out.print("ser");
            session.commit();
        }
        destory(session);
        return  ser;
    }//搜索全部用户，用于注册
    public void Useradd(User U){
        session = init();
        if (session!=null) {
            Usermapper mapper = session.getMapper(Usermapper.class);
            mapper.insert(U);
            session.commit();
        }
        destory(session);
        //System.out.print("g");

    }//添加用户，用于注册
    public int  UserUpdatebyID(User U) {
        init();
        cm = session.getMapper(Usermapper.class);
        int a=cm.UserUpdatebyID(U);
        session.commit(); //手动提交
        destory(session);
        return a;
    }//用户更新信息
       public String Getuserid(Integer a) {
           String username="";
           session = init();
           if (session!=null) {
               Usermapper mapper = session.getMapper(Usermapper.class);
               username= mapper.showusername(a);
               System.out.print("ser");
               session.commit();
           }
           destory(session);
           return  username;
       }
}
