package com.glacier.shiro.realm;

import com.glacier.shiro.entity.Permission;
import com.glacier.shiro.entity.Role;
import com.glacier.shiro.realm.entity.UserInfo;
import com.glacier.shiro.service.PermissionService;
import com.glacier.shiro.service.RoleService;
import com.glacier.shiro.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * date 2021-04-27 09:14
 *
 * @author glacier
 * @version 1.0
 */
public class UserAuthorizingRealm extends AuthorizingRealm {
    public static final Logger LOGGER = LoggerFactory.getLogger(UserAuthorizingRealm.class);
    
    private final UserService userService;
    private final RoleService roleService;
    private final PermissionService permissionService;
    
    public UserAuthorizingRealm(UserService userService,
                                RoleService roleService,
                                PermissionService permissionService) {
        this.userService = userService;
        this.roleService = roleService;
        this.permissionService = permissionService;
    }
    
    
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        LOGGER.info("check authorization info");
        
        SimpleAuthorizationInfo authInfo = new SimpleAuthorizationInfo();
        
        // 获取当前用户
        UserInfo userInfo = (UserInfo) principalCollection.getPrimaryPrincipal();
        
        // 查询角色信息
        Set<String> roles = roleService.findByUsername(userInfo.getUsername())
                .stream()
                .map(Role::getCode)
                .collect(Collectors.toSet());
        //角色所有权限
        Set<String> perms = permissionService.findByUsername(userInfo.getUsername())
                .stream()
                .map(Permission::getCode)
                .collect(Collectors.toSet());
        authInfo.addStringPermissions(perms);
        return authInfo;
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
