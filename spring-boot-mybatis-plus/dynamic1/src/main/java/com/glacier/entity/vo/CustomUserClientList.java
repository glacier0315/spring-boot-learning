package com.glacier.entity.vo;

import com.glacier.entity.OauthClientDetails;
import com.glacier.entity.User;

import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-07-26 21:44
 */
public class CustomUserClientList {
    private List<User> userList;
    private List<OauthClientDetails> oauthClientDetailsList;

    public CustomUserClientList() {
    }

    public CustomUserClientList(List<User> userList, List<OauthClientDetails> oauthClientDetailsList) {
        this.userList = userList;
        this.oauthClientDetailsList = oauthClientDetailsList;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public List<OauthClientDetails> getOauthClientDetailsList() {
        return oauthClientDetailsList;
    }

    public void setOauthClientDetailsList(List<OauthClientDetails> oauthClientDetailsList) {
        this.oauthClientDetailsList = oauthClientDetailsList;
    }

}
