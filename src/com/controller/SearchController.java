package com.controller;

import com.github.pagehelper.PageInfo;
import com.service.NewsService;
import com.vo.News;
import com.vo.ResultVo;
import org.springframework.web.bind.annotation.*;

import java.util.List;


//曹富钧添加
@RestController
@RequestMapping("cfj")
public class SearchController {



    private NewsService newsService = new NewsService();





    @RequestMapping(value = "/findNews", method = RequestMethod.POST)
    @ResponseBody
    public ResultVo findArticle(@RequestParam("page") Integer page,
                                @RequestParam("limit") Integer limit,
                               String relation) {

        //实例化封装类
        ResultVo rv=new ResultVo();
        try {

            //实例分页插件

            PageInfo<News> pdr = new PageInfo<News>();
           if(!relation.equals("")){
            pdr =newsService.findNewsByRelation(relation, page, limit);
          }

            rv.setCount(pdr.getTotal());//往封装类存入数据量
            rv.setData(pdr.getList());//往封装类存入数据
            rv.setCode(0);
            rv.setMsg("ok");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rv;
    }





}
