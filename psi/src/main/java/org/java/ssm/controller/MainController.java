package org.java.ssm.controller;

import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.java.ssm.service.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @ClassName: MainController 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月4日 下午1:33:36 
 *
 */
@SuppressWarnings("unchecked")
@Controller
public class MainController {
	
	@Autowired
	private SysMenuService service;
	
	//进入首页
	@RequestMapping("/first.htm")
	public ModelAndView first(){
		
		ModelAndView mv = new ModelAndView("/main");
//		ModelAndView mv = new ModelAndView("/test/testMain");
		
		System.out.println("用户认证成功");
		//通过主体获得用户信息
		 Subject subject = SecurityUtils.getSubject();
		
		Map<String, Object> curSysUser = (Map<String, Object>)  subject.getPrincipal();
		String username = (String)curSysUser.get("name");
		mv.addObject("username", username);
		
		//这里的菜单获取只是用来做测试的
		List<Map<String, Object>> menuMap = service.findAllSysMenu();
		//System.out.println(menuMap.size());
		mv.addObject("menuMap", menuMap);
		
		//List<String> menuModelList = service.findMenuModel();
		//mv.addObject("menuModelList", menuModelList);
		//System.out.println(menuModelList.size());
		
		Map<String,String> menuModelMap = service.findMenuModels();
		mv.addObject("menuModelMap", menuModelMap);
		//System.out.println(menuModelMap.size());
		/*System.out.println(menuModelMap.get("client"));*/
		/*for (String key : menuModelMap.keySet()) {
			System.out.println(key);
		}*/
		return mv;
	}

}
