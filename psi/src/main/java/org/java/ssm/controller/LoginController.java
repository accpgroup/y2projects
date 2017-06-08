package org.java.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 用于用户登录页面的跳转
 * @ClassName: LoginController 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月7日 下午8:14:21 
 *
 */
@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) throws Exception{
		System.out.println("用户正在登录+++++++++++++++++++++");
		
		String msg = (String)request.getAttribute("shiroLoginFailure");
		System.out.println("错误消息："+msg);
		if (msg!=null) {
			String exmsg = msg.substring(msg.lastIndexOf(".")+1);
			System.out.println("截取后的错误消息:"+exmsg);
			if (exmsg.equalsIgnoreCase("UnknownAccountException")) {
				throw new Exception("用户名不存在");
			}else if (exmsg.equalsIgnoreCase("IncorrectCredentialsException")) {
				throw new Exception("密码错误");
			}else if (exmsg.equalsIgnoreCase("AuthenticationException")) {
				throw new Exception("用户名或密码错误");
			}else {
				
			}
		}
		
		return "/login";
	}

}
