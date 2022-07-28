package com.controller;

import com.service.CommentService;
import com.service.NewsService;
import com.service.NewspicService;
import com.vo.News;
import com.vo.Newspic;
import com.vo.User;
import net.sf.json.JSONArray;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.transform.Source;
import java.io.File;
import java.io.IOException;
import java.sql.SQLOutput;
import java.sql.Timestamp;
import java.util.*;

@Controller
public class SpringmvcController {
    NewsService ns = new NewsService();
    CommentService cs = new CommentService();
    NewspicService nps = new NewspicService();



    @RequestMapping("InsertNews")
//    @ResponseBody
    public String InsertNews(String NewsTitle, String NewsContent, Integer NewsColumn, MultipartFile NewsPic) throws IOException {
        //判断是否存在重名的情况
        int count = ns.selectSameTitle(NewsTitle);
        if(count != 0 ){
            return "error2.jsp";
        }

        System.out.println(NewsTitle + "-" + NewsContent + "-" + NewsColumn);
        //获得当前时间
        java.util.Date date = new Date(System.currentTimeMillis());
        Timestamp t = new Timestamp(date.getTime());
        System.out.println(t);

        News n = new News(null,NewsTitle,NewsContent,t,NewsColumn,false);
        ns.InsertNews(n);

        //获取到原始的文件名
        String fileName = NewsPic.getOriginalFilename(); //通过输入流对象，获取文件名
        //获取文件的后缀
        String suffix = fileName.substring(fileName.lastIndexOf("."));

        int NewsID = ns.selectNewsID(NewsTitle);
        String uuid = UUID.randomUUID().toString();
        String NewsPicPath = "images/"+uuid+suffix;
        Newspic np = new Newspic(NewsID,NewsPicPath);
        nps.insertNewspic(np);
        FileUtils.copyInputStreamToFile(NewsPic.getInputStream(), new File("C:/Users/li/Documents/Tencent Files/1291909721/FileRecv/news/out/artifacts/news_war_exploded/images/"+uuid+suffix));
        System.out.println("图片上传完成");
        Map<String,String> map = new HashMap<String, String>();
        map.put("a","插入成功");
        return "index2.jsp";
    }

    @RequestMapping("ReportComment")
    public String ReportComment(Integer CommentID){
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        HttpSession session = request.getSession();
        int a = (int)session.getAttribute("newsid");
        cs.updateCommentisCheck(CommentID);//修改审核情况
        return "lookcomment?a="+ a;
    }
    @RequestMapping("Tourlogin")
    public String Tourlogin(){
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        HttpSession session = request.getSession();
        User user = new User(-1);
       session.setAttribute("CURRENT_USER",user);
        return "index2.jsp";
    }
}
