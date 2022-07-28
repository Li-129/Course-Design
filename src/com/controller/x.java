package com.controller;

import com.service.NewsService;
import com.service.dataBaseService;
import com.vo.News;

import java.sql.Date;
import java.sql.Timestamp;

public class x {
    public static void main(String[] args) {
        dataBaseService service = new dataBaseService();
        System.out.println(service.show());
    }
}
