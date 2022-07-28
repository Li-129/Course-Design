package com.controller;


import com.service.Userservice;
import com.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;


@Controller
public class Usercontroller {
    @RequestMapping("Userlogin")//普通用户登陆
    public String login(User u,Model model, HttpSession session, HttpServletRequest req , HttpSession sessionParam,int name,String password) throws Exception {
            System.out.println("普通用户");
            int userID;
            int userAccount;
            String userPassword;
            String userName;
            String userSex;
            String userEmail;
            User user = new User(name, password);
            Userservice U=new Userservice();
            User userSelect=U.search(name);

            if(userSelect==null){
                model.addAttribute("message", "账户不存在");
                return "Userlogin.jsp";
            }else{
                userPassword=userSelect.getUserPassword();
                userAccount=userSelect.getUserAccount();
                userID=userSelect.getUserID();
                userName=userSelect.getUserName();
                userSex=userSelect.getUserSex();
                userEmail=userSelect.getUserEmail();
            }

            User uu=new User(userID,userAccount,userPassword,userName,userSex,userEmail);

            if(user==null || password==null){
                model.addAttribute("message", "账号或密码为空！");
                return "Userlogin.jsp";
            } else if(userAccount == name && userPassword.equals(password)) {
                System.out.println("登录功能实现!");
                session.setAttribute("CURRENT_USER",uu);
                session.setAttribute("ID",uu.getUserID());
                session.setAttribute("PASSWORD",uu.getUserPassword());
                session.setAttribute("NAME",uu.getUserName());
                session.setAttribute("SEX",uu.getUserSex());
                session.setAttribute("EMAIL",uu.getUserEmail());


                System.out.println("--------"+uu);
                //return "redirect:index";
                return "User.jsp";
            }else{
                model.addAttribute("message", "账户或密码错误");
                return "Userlogin.jsp";
            }
    }
    @RequestMapping("register")//普通用户注册
    public String userRegister(HttpServletRequest req ,HttpSession sessionParam,HttpServletResponse res,int userID,int userAccount, String userPassword, String userName, String userSex, String userEmail) throws Exception {
        User U=new User(userID,userAccount,userPassword,userName,userSex,userEmail);
        Userservice UU=new Userservice();
        ArrayList<User> aList=UU.searchall();
        boolean flag=true;
        for(int i = 0;i < aList.size();i++){
            User a = aList.get(i);//直接拿这个a去点get或者set就行了
            flag=true;
            if(userID==a.getUserID()){
                System.out.print(a.getUserID()+"ID非法");
                flag=false;
                req.setAttribute("loginError", "注册失败，id已经被注册过");          // 设置错误属性
                req.getRequestDispatcher("register.jsp").forward(req, res);
            } else if(userAccount==a.getUserAccount()){
                System.out.print(a.getUserAccount()+"账号非法");
                flag=false;
                req.setAttribute("loginError", "注册失败，nema已经被注册过");          // 设置错误属性
                req.getRequestDispatcher("register.jsp").forward(req, res);
            }else if (userID<=1){
                System.out.print(a.getUserAccount()+"ID非法");
                flag=false;
                req.setAttribute("loginError", "注册失败，ID：1为保留字段");          // 设置错误属性
                req.getRequestDispatcher("register.jsp").forward(req, res);
            }
        }
        if(flag)
        UU.Useradd(U);
        return "Userlogin.jsp";
    }
    @RequestMapping("Userupdate")//普通用户更新信息
    public String UserUpdatebyID(User uu) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        HttpSession session = request.getSession();
        session.setAttribute("ID",uu.getUserID());
        session.setAttribute("PASSWORD",uu.getUserPassword());
        session.setAttribute("NAME",uu.getUserName());
        session.setAttribute("SEX",uu.getUserSex());
        session.setAttribute("EMAIL",uu.getUserEmail());
        Userservice userservice =new Userservice();
        userservice.UserUpdatebyID(uu);
        return "User.jsp";
    }
}