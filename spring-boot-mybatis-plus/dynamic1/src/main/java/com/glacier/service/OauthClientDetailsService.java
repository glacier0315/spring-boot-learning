package com.glacier.service;


import com.glacier.entity.OauthClientDetails;

import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-07-26 16:21
 */
public interface OauthClientDetailsService {

    /**
     * 查询所有客户端
     *
     * @return
     */
    List<OauthClientDetails> findAll();
}
