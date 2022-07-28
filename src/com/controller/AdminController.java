package com.controller;
import com.service.Adminservice;
import com.vo.Admin;
import com.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
public class AdminController {
    private String uuid;
    @Resource
    HttpServletRequest request;

    @RequestMapping ("Adminlogin")//管理员用户登陆
    public String login1(Admin a,Model model, HttpSession session, HttpServletRequest req , HttpSession sessionParam,int name,String password) throws Exception {
        System.out.println("管理员");
        int adminID;
        int adminAccount;
        String adminPassword;
        String adminName;
        Admin admin = new Admin(name, password);
        Adminservice A=new Adminservice();
        Admin adminSelect=A.search(name);

        if(adminSelect==null){
            model.addAttribute("message", "账户不存在");
            return "Adminlogin.jsp";
        }else{
            adminPassword=adminSelect.getAdminPassword();
            adminAccount=adminSelect.getAdminAccount();
            adminID=adminSelect.getAdminID();
            adminName=adminSelect.getAdminName();
        }
        Admin AA=new Admin(adminID,adminAccount,adminPassword,adminName);

        if(admin==null || password==null){
            model.addAttribute("message", "账号或密码为空！");
            return "Adminlogin.jsp";
        } else if(adminAccount == name && adminPassword.equals(password)) {
            System.out.println("登录功能实现!");
            session.setAttribute("CURRENT_ADMIN",AA);
            session.setAttribute( "AdminID",AA.getAdminID());
            System.out.println(AA);

            //return "redirect:index";
            return "Admin.jsp";
        }else{
            model.addAttribute("message", "账户或密码错误");
            return "Adminlogin.jsp";
        }

    }
    @RequestMapping("findall")//管理员查找所有用户
    public String findall(Model model) throws IOException{
        Adminservice adminservice =new Adminservice();
        List<User> users = adminservice.find();
        int i=0;
        for (User user:users){
            model.addAttribute("UserID"+i, user.getUserID());
            model.addAttribute("UserAccount"+i, user.getUserAccount());
            model.addAttribute("UserPassword"+i, user.getUserPassword());
            model.addAttribute("UserName"+i, user.getUserName());
            model.addAttribute("UserSex"+i, user.getUserSex());
            model.addAttribute("UserEmail"+i, user.getUserEmail());
            System.out.println(user);
            i++;
        }

        model.addAttribute("num",i);

        return "UserDelete.jsp";
    }
    @RequestMapping("Userdelete")//管理员删除用户
    public String UserDelete(@RequestParam("id")String id) {
        Adminservice adminservice =new Adminservice();
        adminservice.UserDeletebyID(id);
        return "Admin.jsp";
    }
}
