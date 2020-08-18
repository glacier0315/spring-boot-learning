package com.glacier.entity.vo;

import com.glacier.entity.OauthClientDetails;
import com.glacier.entity.User;
import lombok.*;

import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-07-26 21:44
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
public class CustomUserClientList {
    private List<User> userList;
    private List<OauthClientDetails> oauthClientDetailsList;
}
