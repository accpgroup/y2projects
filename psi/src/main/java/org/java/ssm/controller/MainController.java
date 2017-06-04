package org.java.ssm.controller;

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
@Controller
public class MainController {
	
	//进入首页
	@RequestMapping("/first.htm")
	public ModelAndView first(){
		return new ModelAndView("/main");
	}

}
