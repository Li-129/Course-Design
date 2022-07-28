package com.controller;

import com.service.NewsService;
import com.service.NewspicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
public class CheckControll {
    private NewsService service = new NewsService();
    private NewspicService nservice = new NewspicService();

    //2022.5.7优化代码
   @RequestMapping("examine")
    public String getNewsContent(int id,HttpServletRequest res)throws IOException {
        //得到新闻的内容
        String content = service.selectContent(id);
        String title = service.selectTitle(id);
       /* List<News> list  =service.selectAllNews();
        for(News l: list ){
            l.getNewsCheck();
        }*/
        System.out.println(content);
        res.setAttribute("id",id);
        res.setAttribute("NewsContent",content);
        res.setAttribute("title",title);
        return "examine.jsp";
    }

    @RequestMapping("changeCheck")
    public String changeCheck(int id){
        service.changeCheck(id);
        return "check.jsp";
    }
   /* @RequestMapping("selectAllNews")
    @ResponseBody
    public List<News> selectAllNews(){
        List<News> news = service.selectAllNews();
        System.out.println("-----------------------");
        System.out.println(news);
        return news;

    }*/
   @RequestMapping("deleteNews")
   public String deleteNews(int id){
       service.deleteNews(id);
       nservice.deleteNewspic(id);
       return "check.jsp";
   }

}
