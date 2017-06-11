package org.java.ssm.shiro;

import java.util.Map;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.java.ssm.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 自定义用户的认证和授权
 * @ClassName: CustomRealm 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月7日 下午11:25:41 
 *
 */
public class CustomRealm extends AuthorizingRealm {
	
	@Autowired
	private SysUserService service;

	//授权
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection pc) {

		return null;
	}

	//认证
	@SuppressWarnings("null")
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		
		System.out.println("++++++开始认证+++++");
		//获得用户名凭证
		String principal = (String) token.getPrincipal();
		System.out.println("前台取到的用户名："+principal);
		
		Map<String, Object> userMap = service.login(principal);
		if (userMap==null && userMap.size()!=1) {
			System.out.println("用户名不存在");
			return null;
		}else{
			//取到用户密码
			String password = (String) userMap.get("password");
			
			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userMap, password, "");
			return info;
		}
		//return null;
	}

}
