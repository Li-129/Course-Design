package com.service;

import com.mapper.Adminmapper;
import com.mapper.Usermapper;
import com.vo.Admin;
import com.vo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class Adminservice {
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
    public void destory(){
        if(session!=null){
            session.close();
        }
    }
    public Admin search(int a){
        Admin ser=null;
        session = init();
        if (session!=null) {
            Adminmapper mapper = session.getMapper(Adminmapper.class);
            ser=mapper.search(a);
            System.out.print("ser");
            session.commit();
        }
        //destory(session);
        System.out.println(2);
        return  ser;

    }//利用账号检索，用于管理员登陆
    public List<User> find() {
        init();
        cm = session.getMapper(Usermapper.class);
        List<User> us =null;
        us =cm.findallUser();
        destory();
        return us;
    }//管理员查找所有用户
    public int  UserDeletebyID(String id) {
        init();
        cm = session.getMapper(Usermapper.class);
        int a=cm.UserDeletebyID(id);
        session.commit(); //手动提交
        destory();
        return a;
    }//管理员删除普通账户
}
