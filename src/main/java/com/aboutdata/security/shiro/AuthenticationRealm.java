package com.aboutdata.security.shiro;

import com.aboutdata.domain.Admin;
import com.aboutdata.security.utils.SecurityUtils;
import com.aboutdata.service.AdminService;
import java.util.Date;
import javax.annotation.Resource;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 权限认证
 */
public class AuthenticationRealm extends AuthorizingRealm {

  
    private Logger logger =LoggerFactory.getLogger(AuthenticationRealm.class);

    @Resource(name = "adminServiceImpl")
    private AdminService adminService;

    /**
     * 验证当前登录的Subject
     *
     * @param authcToken
     * @return
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) {
        UsernamePasswordToken authenticationToken = (UsernamePasswordToken) authcToken;
        String username = authenticationToken.getUsername();
        String password = new String(authenticationToken.getPassword());

        if (username != null) {
            Admin admin = adminService.findByUsername(username);
            if (admin == null) {
                logger.info("没有该用户");
                throw new UnknownAccountException();
            }
            //密码验证
            if (!SecurityUtils.matchPassphrase(admin.getPassword(), admin.getSalt(), password)) {
                logger.info("password not match");
                throw new IncorrectCredentialsException();
            }

            admin.setLoginDate(new Date());
            admin.setLoginFailureCount(0);
//            adminService.update(admin);

            return new SimpleAuthenticationInfo(new Principal(admin.getId(), username), password, getName());
        }
        throw new UnknownAccountException();
    }

    /**
     *
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        Principal principal = (Principal) super.getAvailablePrincipal(principals);
        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();

        String currentUsername = principal.getUsername();
        if (null != currentUsername && "admin".equals(currentUsername)) {
            simpleAuthorInfo.addRole("admin");
            simpleAuthorInfo.addStringPermission("admin:manage");
            logger.info("已为用户{}赋予了[admin]角色和[manage]权限", currentUsername);
            return simpleAuthorInfo;
        } else if (null != currentUsername && "xuanyu".equals(currentUsername)) {
            logger.info("当前用户[{}]无授权", currentUsername);
            return simpleAuthorInfo;
        }
        return null;
    }
}
