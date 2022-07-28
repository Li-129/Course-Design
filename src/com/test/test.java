package com.test;

import com.mapper.Newsmapper;
import com.mapper.Newspicmapper;
import com.service.NewspicService;
import com.vo.News;
import com.vo.Newspic;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class test {
    private SqlSession session=null;
    private Newsmapper news;
    private Newspicmapper newspic;
    private List<News> list1;
    private List<Newspic> list2;
    @Before
    public void init(){
        InputStream is;
        try {
            is = Resources.getResourceAsStream("mybatis_config.xml");
            //2.ʹ��is������ ����SessionFactory
            SqlSessionFactory build = new SqlSessionFactoryBuilder().build(is);
            //3.������ݿ�����
            session = build.openSession();
            //��������
            //session=build.openSession(ExecutorType.BATCH);

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }//��ȡ�ļ�


    }
    @After
    public void destory(){
        if(session!=null){
            session.close();
        }
    }
    @Test
    public void testSelectAll(){
        if(session!=null){
            news =  session.getMapper(Newsmapper.class);
            list1 = news.show();
            for (News s : list1) {
                System.out.println(s);
            }
        }
    }
    @Test
    public void findAll() {
        if (session != null) {

            Newspicmapper mapper = session.getMapper(Newspicmapper.class);
            List<Newspic> newspics = mapper.findAll();
            for (Newspic newspic : newspics) {
                System.out.println(newspic);
            }
        }
    }

    @Test
    public void findByMumble(){
        String relation = "东航";
        Newsmapper mapper = session.getMapper(Newsmapper.class);
        List<News> news = mapper.findNews(relation);
        System.out.println(news);
    }

    @Test
    public void TestInsertNewsPic(){
        Newspic np = new Newspic(6,"images/test.png");
        NewspicService service = new NewspicService();
        service.insertNewspic(np);
    }
}
