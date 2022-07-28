package com.controller;

import com.service.CommentService;
import com.vo.Comment;
import com.vo.News;
import com.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DemoControl {

    @RequestMapping("lookcomment")
    public String lookcomment(HttpServletRequest req, HttpServletResponse res,HttpSession session,int a) throws Exception {
        req.getSession().setAttribute("newsid",a);

        List<Comment> fi;
        List<Comment> FI;
        CommentService comment = new CommentService();
        //int a=Integer.parseInt( req.getSession().getAttribute("newsid").toString());
        User user = (User)session.getAttribute("CURRENT_USER");
        if(user.getUserID() == -1){
            return "error.jsp";
        }
        else {
            int userid = user.getUserID();
            System.out.println(userid + "=====================================");
            System.out.println(a);
            //不包含当前用户的list
            fi = comment.selectbycomid(a, userid);
            //包含当前用户的list
            FI = comment.selectbycomid1(a, userid);
            System.out.println(fi + "-------------------------------!@@@@@@@@@@@");

            req.setAttribute("list", fi);
            req.setAttribute("list2", FI);
            System.out.println("adf");
            return "comment.jsp";
        }
    }
    @RequestMapping("deletecomment")
    @ResponseBody
    public Map<String, String> deletecomment(HttpSession session, HttpServletRequest req , HttpSession sessionParam,int CommentID) throws Exception {
        CommentService comment = new CommentService();
        comment.deletecomment(CommentID);
        System.out.println(CommentID);
        Map<String,String> map = new HashMap<String,String>();
        map.put("msg", "成功");
        return map;
    }
    @RequestMapping("insertcomment")
    @ResponseBody
    public Map<String, String> insertcomment(HttpServletRequest req, HttpServletResponse res,String Comment,HttpSession session) throws Exception {
        java.util.Date date = new Date(System.currentTimeMillis());//获得当前时间
        Timestamp t = new Timestamp(date.getTime());
        System.out.println(t);

        int cc=Integer.parseInt( req.getSession().getAttribute("newsid").toString());
        System.out.println(cc+"sss");
        User a = (User)session.getAttribute("CURRENT_USER");
        System.out.println(a+"www");
        String USERID=req.getSession().getAttribute("ID").toString();
        System.out.println(USERID+"1111");

        //插入comment
        Comment b = new Comment(Comment, (java.util.Date) t, (byte) 1,cc,a.getUserID());
        CommentService comment = new CommentService();
        comment.insertcomment(b);
       /* //插入com_and_news
        int comment_id = comment.commentid();
        System.out.println(comment_id);
        int Newsid = news.getNewsID();
        comment.insertcomment_news(comment_id, Newsid);
        comment.insertcomment_user(comment_id, 2);*/
        Map<String,String> map = new HashMap<String,String>();
        map.put("msg", "插入成功");
        return map;
    }

    //曹富钧添加以下
    @RequestMapping("filtercomment")
    @ResponseBody
    public Map<String, String> filtercomment(HttpServletRequest req, HttpServletResponse res, String Comment,HttpSession session) throws Exception {
        //以下为设置的敏感词组，设置的不多，但是比较有代表性
        String[] s1={"乌克兰","俄乌战争"};
        boolean flag=true;
        for (String s : s1) {
            if (Comment.contains(s)) {
                flag = false;
                break;
            }

        }

        Map<String,String> map = new HashMap<String,String>();
        if(flag) {
            System.out.println("一切OK"+Comment);
            map.put("msg", "ok");
            return map;
        }
        else {
            System.out.println("评论有问题"+Comment);
            map.put("msg", "评论有问题，互联网不是法外之地，请您注意自己的言行");
            return map;
        }

    }

     //用于删除未经过审核的评论
    @RequestMapping("uncheckComment")
    public String deleteUncheckComment(int id){
        CommentService comment = new CommentService();
        comment.deletecomment(id);
        System.out.println(id);
        return "reportComment.jsp";
    }

    //用于通过审核的评论
    @RequestMapping("passComment")
    public String passComment(int id){
        CommentService comment = new CommentService();
        comment.passCommentis(id);
        System.out.println(id);
        return "reportComment.jsp";
    }
}
