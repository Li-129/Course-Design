<%--
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

    </style>
  </head>
  <body>
  <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script >
    $(document).ready(function(){
      alert("Text1: " + $("#test").text());
      $.ajax({
        url:'Show',
        type:"get",
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
    })

    function show1(){
//alert("Text1: " + $("#test").text());
      $.ajax({
        url:'Show1',
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
          tr='<td>newsID</td>'+'<td>newsTitle</td>';
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
          tr='<td>newsID</td>'+'<td>newsTitle</td>';
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
          tr='<td>newsID</td>'+'<td>newsTitle</td>';
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
    function comment(){
        $.ajax({
            url:'lookcomment',
            success:function(data){
                window.location.href="http://localhost:8080/news_war_exploded/lookcomment";
            }
        });
    }
  </script>

  <script type="text/javascript">

      function seek(){
          var relation1=$("#relaion1").val();
          // alert(relation1);
          window.location.href="http://localhost:8080/news_war_exploded/search.html"+"?relation1="+relation1;

      }


  </script>
  <div align="center">
<%--    <input type="button" onclick="show()" value="查询"/><br/>--%>
    <input type="button" onclick="show5()" value="主页"/>
    <input type="button" onclick="show1()" value="时政"/>
    <input type="button" onclick="show2()" value="实事"/>
    <input type="button" onclick="show3()" value="经济"/>
    <input type="button" onclick="show4()" value="体育"/>
    <input type="button" onclick="show6()" value="文化"/>
<%--    头哥--%>
    <input id="relaion1" type="text">
    <input type="button" onclick="seek()" value="查询"/>
    <table class="table table-bordered" id='tabletest'>
    </table>
      <input type="button" onclick="comment()" value="评论页面"/>
  </div>


  </body>
</html>
