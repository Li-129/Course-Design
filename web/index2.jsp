<%@ page import="com.vo.User" %><%--
  Created by IntelliJ IDEA.
  User: 李文阳
  Date: 2022/3/22
  Time: 8:00
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        button{
            position: relative;
            height: 30px;
            width: 70px;
            margin: 0 35px;
            border-radius: 50px;
            border: none;
            outline: none;
            background: #2f4056;
            color: #fff;
            font-size: 15px;
            letter-spacing: 2px;
            text-transform: uppercase;
            cursor: pointer
        }

        button:first-child:hover{
            background: linear-gradient(90deg, #03a9f4, #f441a5, #ffeb3b, #03a9f4);
            background-size: 400%;
        }


        button:last-child:hover{
            background: linear-gradient(90deg, #fa7199, #f5ce62, #e43603, #fa7199);
            background-size: 400%;
        }

        button:first-child:before,
        button:last-child:before{
            content: '';
            position: absolute;
            background: inherit;
            top: -5px;
            right:-5px;
            bottom: -5px;
            left: -5px;
            border-radius: 50px;
            filter: blur(20px);
            opacity: 0;
            transition: opacity 0.5s;
        }

        button:first-child:hover:before,
        button:last-child:hover:before{
            opacity: 1;
            z-index: -1;
        }

        button:hover{
            z-index: 1;
            animation: glow 8s linear infinite;
        }

        @keyframes glow {
            0%{
                background-position: 0%;
            }
            100%{
                background-position: 400%;
            }
        }

    </style>
      <meta name="renderer" content="webkit">
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      <link rel="stylesheet" href="layui/css/layui.css"  media="all">

  </head>
  <body>
  <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script >
    $(document).ready(function(){
      $.ajax({
        url:'Show',
        type:"get",
        dataType:'json',
        success:function(data){
          $("#tabletest").find('tr').remove();
          tr='<td>newsID</td>'+'<td>newsTitle</td>'+'<td>操作</td>';
          $("#tabletest").append('<tr>'+tr+'</tr>');//方法中传入的参数data为后台获取的数据
          for(i in data) //data指的是数组，i为数组的索引
          {
            var tr;
            tr='<td class="id">' +data[i].newsID+'</td>'
                    +'<td>' +data[i].newsTitle+"</td>"
                    + "<td>" +"<button class='btn'>"+"详情"+"</button>"+"</td>"
                    + '</td>';
            $("#tabletest").append('<tr>'+tr+'</tr>')
          }
          $("#tabletest").on('click','.btn',function(){
            var a=$(this).parents("tr").find(".id").text();
              window.location.href="http://localhost:8080/news_war_exploded/news.html"+"?newsID="+a;
          })
        }
      });
    });

    function show1(){
//alert("Text1: " + $("#test").text());
      $.ajax({
        url:'Show1',
        type:'get',
        dataType:'json',
        success:function(data){
          $("#tabletest").find('tr').remove();
            tr='<td>newsID</td>'+'<td>newsTitle</td>'+'<td>操作</td>';
          $("#tabletest").append('<tr>'+tr+'</tr>');//方法中传入的参数data为后台获取的数据
          for(i in data) //data指的是数组，i为数组的索引
          {
            var tr;
            tr='<td class="id">' +data[i].newsID+'</td>'
                    +'<td>' +data[i].newsTitle+"</td>"
                    + "<td>" +"<button class='btn'>"+"详情"+"</button>"+"</td>"
                    + '</td>';
            $("#tabletest").append('<tr>'+tr+'</tr>')
          }
          $("#tabletest").on('click','.btn',function(){
            var a=$(this).parents("tr").find(".id").text();
              window.location.href="http://localhost:8080/news_war_exploded/news.html"+"?newsID="+a;
          })
        }
      });
    }
    function show2(){
//alert("Text1: " + $("#test").text());
      $.ajax({
        url:'Show2',
        type:'get',
        dataType:'json',
        success:function(data){
          $("#tabletest").find('tr').remove();
            tr='<td>newsID</td>'+'<td>newsTitle</td>'+'<td>操作</td>';
          $("#tabletest").append('<tr>'+tr+'</tr>');//方法中传入的参数data为后台获取的数据
          for(i in data) //data指的是数组，i为数组的索引
          {
            var tr;
            tr='<td class="id">' +data[i].newsID+'</td>'
                    +'<td>' +data[i].newsTitle+"</td>"
                    + "<td>" +"<button class='btn'>"+"详情"+"</button>"+"</td>"
                    + '</td>';
            $("#tabletest").append('<tr>'+tr+'</tr>')
          }
          $("#tabletest").on('click','.btn',function(){
            var a=$(this).parents("tr").find(".id").text();
              window.location.href="http://localhost:8080/news_war_exploded/news.html"+"?newsID="+a;
          })

        }
      });
    }
    function show3(){
//alert("Text1: " + $("#test").text());
      $.ajax({
        url:'Show3',
        type:'get',
        dataType:'json',
        success:function(data){
          $("#tabletest").find('tr').remove();
            tr='<td>newsID</td>'+'<td>newsTitle</td>'+'<td>操作</td>';
          $("#tabletest").append('<tr>'+tr+'</tr>');//方法中传入的参数data为后台获取的数据
          for(i in data) //data指的是数组，i为数组的索引
          {
            var tr;
            tr='<td class="id">' +data[i].newsID+'</td>'
                    +'<td>' +data[i].newsTitle+"</td>"
                    + "<td>" +"<button class='btn'>"+"详情"+"</button>"+"</td>"
                    + '</td>';
            $("#tabletest").append('<tr>'+tr+'</tr>')
          }
          $("#tabletest").on('click','.btn',function(){
            var a=$(this).parents("tr").find(".id").text();
              window.location.href="http://localhost:8080/news_war_exploded/news.html"+"?newsID="+a;
          })
        }
      });
    }
    function show4(){
//alert("Text1: " + $("#test").text());
      $.ajax({
        url:'Show4',
        type:'get',
        dataType:'json',
        success:function(data){
          $("#tabletest").find('tr').remove();
            tr='<td>newsID</td>'+'<td>newsTitle</td>'+'<td>操作</td>';
          $("#tabletest").append('<tr>'+tr+'</tr>');//方法中传入的参数data为后台获取的数据
          for(i in data) //data指的是数组，i为数组的索引
          {
            var tr;
            tr='<td class="id">' +data[i].newsID+'</td>'
                    +'<td>' +data[i].newsTitle+"</td>"
                    + "<td>" +"<button class='btn'>"+"详情"+"</button>"+"</td>"
                    + '</td>';
            $("#tabletest").append('<tr>'+tr+'</tr>')
          }
          $("#tabletest").on('click','.btn',function(){
            var a=$(this).parents("tr").find(".id").text();
              window.location.href="http://localhost:8080/news_war_exploded/news.html"+"?newsID="+a;
          })
        }
      });
    }
    function show5(){
//alert("Text1: " + $("#test").text());
      $.ajax({
        url:'Show',
        type:'get',
        dataType:'json',
        success:function(data){
          $("#tabletest").find('tr').remove();
            tr='<td>newsID</td>'+'<td>newsTitle</td>'+'<td>操作</td>';
          $("#tabletest").append('<tr>'+tr+'</tr>');//方法中传入的参数data为后台获取的数据
          for(i in data) //data指的是数组，i为数组的索引
          {
            var tr;
            tr='<td class="id">' +data[i].newsID+'</td>'
                    +'<td>' +data[i].newsTitle+"</td>"
                    + "<td>" +"<button class='btn'>"+"详情"+"</button>"+"</td>";

            $("#tabletest").append('<tr>'+tr+'</tr>')
          }
          $("#tabletest").on('click','.btn',function(){
            var a=$(this).parents("tr").find(".id").text();
              window.location.href="http://localhost:8080/news_war_exploded/news.html"+"?newsID="+a;
          })
        }
      });
    }
    function show6(){
//alert("Text1: " + $("#test").text());
        $.ajax({
            url:'Show6',
            type:'get',
            dataType:'json',
            success:function(data){
                $("#tabletest").find('tr').remove();
                tr='<td>newsID</td>'+'<td>newsTitle</td>';
                $("#tabletest").append('<tr>'+tr+'</tr>');//方法中传入的参数data为后台获取的数据
                for(i in data) //data指的是数组，i为数组的索引
                {
                    var tr;
                    tr='<td class="id">' +data[i].newsID+'</td>'
                        +'<td>' +data[i].newsTitle+"</td>"
                        + "<td>" +"<button class='btn'>"+"详情"+"</button>"+"</td>";

                    $("#tabletest").append('<tr>'+tr+'</tr>')
                }
                $("#tabletest").on('click','.btn',function(){
                    var a=$(this).parents("tr").find(".id").text();
                    window.location.href="http://localhost:8080/news_war_exploded/news.html"+"?newsID="+a;
                })
            }
        });
    }
      function seek(){

          window.location.href="http://localhost:8080/news_war_exploded/search.html";

      }

  </script>

<div>
  <ul class="layui-nav">
      <li class="layui-nav-item">新闻主页：全部新闻显示在这里~</li>

  </ul>
</div>

  <div class="layui-row">
      <div class="layui-col-xs2">
          <div align="left">
              <ul class="layui-nav layui-nav-tree layui-bg-cyan layui-inline" lay-filter="demo">
                  <li class="layui-nav-item"><a href="javascript:show5()">主页</a></li>
                  <li class="layui-nav-item"><a href="javascript:show1()">时政</a></li>
                  <li class="layui-nav-item"><a href="javascript:show2()">实事</a></li>
                  <li class="layui-nav-item"><a href="javascript:show3()">经济</a></li>
                  <li class="layui-nav-item"><a href="javascript:show4()">体育</a></li>
                  <li class="layui-nav-item"><a href="javascript:show6()">文化</a></li>
                  <li class="layui-nav-item"><a href="javascript:seek()">搜索</a></li>
                  <%
                      User user = (User)session.getAttribute("CURRENT_USER");
                      if(user.getUserID() == -1){
                  %>
                  <li class="layui-nav-item"><a href="Userlogin.jsp">返回首页</a></li>
                  <% }else{%>
                  <li class="layui-nav-item"><a href="User.jsp">返回用户主页</a></li>
                  <%
                      }
                  %>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
                  <li class="layui-nav-item">&nbsp;</li>
              </ul>
          </div>
      </div>
      <div class="layui-col-xs10">
          <div align="right">
              <table class="layui-table" lay-skin="line" id='tabletest'>
                  <colgroup>
                      <col width="15">
                      <col width="100">
                      <col width="50">
                      <col>
                  </colgroup>
              </table>
          </div>
      </div>
  </div>
  </body>
</html>
