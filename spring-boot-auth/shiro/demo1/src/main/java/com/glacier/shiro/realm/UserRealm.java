package com.glacier.shiro.realm;

import com.glacier.shiro.realm.entity.UserInfo;
import com.glacier.shiro.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import java.util.Optional;

/**
 * date 2021-04-27 09:14
 *
 * @author glacier
 * @version 1.0
 */
public class UserRealm extends AuthorizingRealm {
    
    private final UserService userService;
    
    public UserRealm(UserService userService) {
        this.userService = userService;
    }
    
    
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }
    
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String username = authenticationToken.getPrincipal().toString();
        Optional<UserInfo> userInfo = userService.findUserByUsername(username);
        if (userInfo.isPresent()) {
            return new SimpleAuthenticationInfo(userInfo.get(),
                    userInfo.get().getPassword(),
                    ByteSource.Util.bytes(username),
                    getName());
        }
        throw new AccountException("用户名或者密码不存在！");
    }
}
