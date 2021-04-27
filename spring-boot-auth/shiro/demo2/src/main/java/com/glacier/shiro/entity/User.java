package com.glacier.shiro.entity;

import java.io.Serializable;

/**
 * date 2021-04-27 20:23
 *
 * @author glacier
 * @version 1.0
 */
public class User implements Serializable {
    private String id;
    private String username;
    private String nickname;
    private String password;
    private String passwordSalt;
    
    public String getId() {
        return id;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getNickname() {
        return nickname;
    }
    
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getPasswordSalt() {
        return passwordSalt;
    }
    
    public void setPasswordSalt(String passwordSalt) {
        this.passwordSalt = passwordSalt;
    }
    
    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", nickname='" + nickname + '\'' +
                ", password='" + password + '\'' +
                ", passwordSalt='" + passwordSalt + '\'' +
                '}';
    }
}
