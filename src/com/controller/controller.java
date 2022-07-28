package com.controller;

import com.service.dataBaseService;
import com.vo.News;
import com.vo.Newspic;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class controller {
    //李文阳
    dataBaseService service=new dataBaseService();

    @RequestMapping("Show")
    @ResponseBody
    public List<News> show(){ //方法的声明一般都是String为返回值
        System.out.println("测试SpringMVC的请求处理方法show");
        List<News> news = service.show();
        System.out.println(news);
        //创建的一个跳转的视图
        return news;
    }
    @RequestMapping("Show1")
    @ResponseBody
    public List<News> show1(){ //方法的声明一般都是String为返回值
        System.out.println("测试SpringMVC的请求处理方法show");
        List<News> news = service.show1();
        System.out.println(news);
        //创建的一个跳转的视图
        return news;
    }
    @RequestMapping("Show2")
    @ResponseBody
    public List<News> show2(){ //方法的声明一般都是String为返回值
        System.out.println("测试SpringMVC的请求处理方法show");
        List<News> news = service.show2();
        System.out.println(news);
        //创建的一个跳转的视图
        return news;
    }
    @RequestMapping("Show3")
    @ResponseBody
    public List<News> show3(){ //方法的声明一般都是String为返回值
        System.out.println("测试SpringMVC的请求处理方法show");
        List<News> news = service.show3();
        System.out.println(news);
        //创建的一个跳转的视图
        return news;
    }
    @RequestMapping("Show4")
    @ResponseBody
    public List<News> show4(){ //方法的声明一般都是String为返回值
        System.out.println("测试SpringMVC的请求处理方法show");
        List<News> news = service.show4();
        System.out.println(news);
        //创建的一个跳转的视图
        return news;
    }

    @RequestMapping("Show6")
    @ResponseBody
    public List<News> show6(){ //方法的声明一般都是String为返回值
        System.out.println("测试SpringMVC的请求处理方法show");
        List<News> news = service.show6();
        System.out.println(news);
        //创建的一个跳转的视图
        return news;
    }

    @RequestMapping("ShowPic")
    @ResponseBody
    public List<Newspic> showpic(){ //方法的声明一般都是String为返回值
        System.out.println("测试SpringMVC的请求处理方法show");
        List<Newspic> newspics = service.findAll();
        System.out.println(newspics);

        //创建的一个跳转的视图
        return newspics;
    }
//    lllllllllllllllllll
}
