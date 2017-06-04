package org.java.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("sys")
@RequestMapping("/sys")
public class SysController {
	
	//显示系统设置的主页面
	@RequestMapping("/sys_main.htm")
	public String sysMain() {
		System.out.println("++++++++");
		
		return "/sys/sys_main";
	}
}
