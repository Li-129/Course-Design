package com.service;

import com.mapper.Newspicmapper;
import com.vo.Newspic;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class NewspicService {
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

    public void insertNewspic(Newspic np) {
        session = init();
        if (session!=null) {
            Newspicmapper mapper = session.getMapper(Newspicmapper.class);
            mapper.insertNewspic(np);
            session.commit();
        }
        session.close();
    }
    public void deleteNewspic(int id) {
        session = init();
        if (session!=null) {
            Newspicmapper mapper = session.getMapper(Newspicmapper.class);
            mapper.deleteNewsPic(id);
            session.commit();
        }
        session.close();
    }
}
