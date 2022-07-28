package com.service;

import com.mapper.Newsmapper;
import com.mapper.Newspicmapper;
import com.vo.News;
import com.vo.Newspic;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class dataBaseService {
    ////////////////////////////李文阳
    private SqlSession session=null;


    public SqlSession init(){
        InputStream is;
        try {
            is = Resources.getResourceAsStream("mybatis_config.xml");
            //2.ʹ��is������ ����SessionFactory
            SqlSessionFactory build = new SqlSessionFactoryBuilder().build(is);
            //3.�������ݿ�����
            session = build.openSession();
            //��������
            //session=build.openSession(ExecutorType.BATCH);

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }//��ȡ�ļ�

        return session;

    }

    public void destory(SqlSession session){
        if(session!=null){
            session.close();
        }
    }

    public List<News> show() {
        session = init();
        Newsmapper mapper = session.getMapper(Newsmapper.class);
        List<News> findAll = mapper.show();
        destory(session);
        return findAll;
    }
    public List<News> show1() {
        session = init();
        Newsmapper mapper = session.getMapper(Newsmapper.class);
        List<News> findAll = mapper.show1();
        destory(session);
        return findAll;
    }
    public List<News> show2() {
        session = init();
        Newsmapper mapper = session.getMapper(Newsmapper.class);
        List<News> findAll = mapper.show2();
        destory(session);
        return findAll;
    }
    public List<News> show3() {
        session = init();
        Newsmapper mapper = session.getMapper(Newsmapper.class);
        List<News> findAll = mapper.show3();
        destory(session);
        return findAll;
    }
    public List<News> show4() {
        session = init();
        Newsmapper mapper = session.getMapper(Newsmapper.class);
        List<News> findAll = mapper.show4();
        destory(session);
        return findAll;
    }

    public List<News> show6() {
        session = init();
        Newsmapper mapper = session.getMapper(Newsmapper.class);
        List<News> findAll = mapper.show6();
        destory(session);
        return findAll;
    }
    //图片一对一
    public List<Newspic> findAll(){
            session = init();
            Newspicmapper mapper = session.getMapper(Newspicmapper.class);
            List<Newspic> newspics = mapper.findAll();
            destory(session);
            return newspics;
    }
    ////////////////////////////////李文阳
}
