package com.vo;

public class Newspic {
    private int NewsID;
    private String NewsPicPath;
    private News news;
    public Newspic() {
    }

    public Newspic(int newsID, String newsPicPath) {
        NewsID = newsID;
        NewsPicPath = newsPicPath;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }

    public int getNewsID() {
        return NewsID;
    }

    public void setNewsID(int newsID) {
        NewsID = newsID;
    }

    public String getNewsPicPath() {
        return NewsPicPath;
    }

    public void setNewsPicPath(String newsPicPath) {
        NewsPicPath = newsPicPath;
    }

    @Override
    public String toString() {
        return "Newspic{" +
                "NewsID=" + NewsID +
                ", NewsPicPath='" + NewsPicPath + '\'' +
                ", news=" + news +
                '}';
    }
}
