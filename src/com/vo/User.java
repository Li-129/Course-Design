package com.vo;

public class User {
    private  int userID;
    private  int userAccount;
    private String userPassword;
    private String userName;
    private String userSex;
    private String userEmail;

    public int getUserID() {
        return userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(int userAccount) {
        this.userAccount = userAccount;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public User(int userID) {
        this.userID = userID;
    }

    public User(int userAccount, String userPassword) {
        this.userAccount = userAccount;
        this.userPassword = userPassword;
    }

    public User(int userID, int userAccount, String userPassword) {
        this.userID = userID;
        this.userAccount = userAccount;
        this.userPassword = userPassword;
    }

    public User(int userID, int userAccount, String userPassword, String userName, String userSex, String userEmail) {
        this.userID = userID;
        this.userAccount = userAccount;
        this.userPassword = userPassword;
        this.userName = userName;
        this.userSex = userSex;
        this.userEmail = userEmail;
    }



    public User() {
        super();
    }

    @Override
    public String toString() {
        return "User{" +
                "userID=" + userID +
                ", userAccount=" + userAccount +
                ", userPassword='" + userPassword + '\'' +
                '}';
    }
}
