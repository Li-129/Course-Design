package com.vo;

import java.util.Date;

public class News {
    private Integer NewsID;
    private String NewsTitle;
    private String NewsContent;
    private Date NewsDate;
    private Integer NewsColumn;
    private Boolean NewsCheck;

    public News() {
    }

    public News(Integer newsID, String newsTitle, String newsContent, Date newsDate, Integer newsColumn, Boolean newsCheck) {
        NewsID = newsID;
        NewsTitle = newsTitle;
        NewsContent = newsContent;
        NewsDate = newsDate;
        NewsColumn = newsColumn;
        NewsCheck = newsCheck;
    }

    public Integer getNewsID() {
        return NewsID;
    }

    public void setNewsID(Integer newsID) {
        NewsID = newsID;
    }

    public String getNewsTitle() {
        return NewsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        NewsTitle = newsTitle;
    }

    public String getNewsContent() {
        return NewsContent;
    }

    public void setNewsContent(String newsContent) {
        NewsContent = newsContent;
    }

    public Date getNewsDate() {
        return NewsDate;
    }

    public void setNewsDate(Date newsDate) {
        NewsDate = newsDate;
    }

    public Integer getNewsColumn() {
        return NewsColumn;
    }

    public void setNewsColumn(Integer newsColumn) {
        NewsColumn = newsColumn;
    }

    public Boolean getNewsCheck() {
        return NewsCheck;
    }

    public void setNewsCheck(Boolean newsCheck) {
        NewsCheck = newsCheck;
    }

    @Override
    public String toString() {
        return "News{" +
                "NewsID=" + NewsID +
                ", NewsTitle='" + NewsTitle + '\'' +
                ", NewsContent='" + NewsContent + '\'' +
                ", NewsDate=" + NewsDate +
                ", NewsColumn=" + NewsColumn +
                ", NewsCheck=" + NewsCheck +
                '}';
    }
}
