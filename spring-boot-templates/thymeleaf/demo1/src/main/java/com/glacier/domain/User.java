package com.glacier.domain;

import java.io.Serializable;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/15 0015</pre>
 */
public class User implements Serializable {
    private static final long serialVersionUID = 1459552861236715606L;
    private String id;
    private String userName;
    private String passWord;
    private Integer sex;

    public User() {
    }

    public User(String id, String userName, String passWord, Integer sex) {
        this.id = id;
        this.userName = userName;
        this.passWord = passWord;
        this.sex = sex;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", userName='" + userName + '\'' +
                ", passWord='" + passWord + '\'' +
                ", sex=" + sex +
                '}';
    }
}
