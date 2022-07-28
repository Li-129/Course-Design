package com.vo;

import java.util.Date;

public class Comment {
    private int CommentID;
    private String CommentContent;
    private Date CommentDate;
    private byte CommentisCheck;
    private int NewsID;
    private int UserID;
    public Comment(int commentID, String commentContent, Date commentDate, byte commentisCheck) {
        CommentID = commentID;
        CommentContent = commentContent;
        CommentDate = commentDate;
        CommentisCheck = commentisCheck;
    }

    public Comment(String commentContent, Date commentDate, byte commentisCheck) {
        CommentContent = commentContent;
        CommentDate = commentDate;
        CommentisCheck = commentisCheck;
    }

    public Comment(String commentContent, Date commentDate, byte commentisCheck, int newsID, int userID) {
        CommentContent = commentContent;
        CommentDate = commentDate;
        CommentisCheck = commentisCheck;
        NewsID = newsID;
        UserID = userID;
    }

    public int getCommentID() {
        return CommentID;
    }

    public void setCommentID(int commentID) {
        CommentID = commentID;
    }

    public String getCommentContent() {
        return CommentContent;
    }

    public void setCommentContent(String commentContent) {
        CommentContent = commentContent;
    }

    public Date getCommentDate() {
        return CommentDate;
    }

    public void setCommentDate(Date commentDate) {
        CommentDate = commentDate;
    }

    public byte getCommentisCheck() {
        return CommentisCheck;
    }

    public void setCommentisCheck(byte commentisCheck) {
        CommentisCheck = commentisCheck;
    }

    public Comment() {
    }

    public Comment(int commentID, String commentContent, Date commentDate, byte commentisCheck, int newsID, int userID) {
        CommentID = commentID;
        CommentContent = commentContent;
        CommentDate = commentDate;
        CommentisCheck = commentisCheck;
        NewsID = newsID;
        UserID = userID;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "CommentID=" + CommentID +
                ", CommentContent='" + CommentContent + '\'' +
                ", CommentDate=" + CommentDate +
                ", CommentisCheck=" + CommentisCheck +
                ", NewsID=" + NewsID +
                ", UserID=" + UserID +
                '}';
    }

    public int getNewsID() {
        return NewsID;
    }

    public void setNewsID(int newsID) {
        NewsID = newsID;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int userID) {
        UserID = userID;
    }
}
