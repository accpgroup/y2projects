package org.java.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 杨飞
 * 入库记录控制器
 * @author Administrator
 *
 */
@Controller("rukuController")
@RequestMapping("/ruku")
public class RuKuController {
	
	
	
    @RequestMapping("/loadAllRuKu.do")
	public String loadAllRuKu(){
    	
		return "/repository/rukudan";
	}
	
}
