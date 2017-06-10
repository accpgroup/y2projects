package org.java.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sys")
public class SysController {
	
	
	//显示系统设置的主页面
	@RequestMapping("/sys_main.htm")
	public String sysMain() {
		System.out.println("++++++++");
		
		return "/sys/sys_main";
	}
	
	//显示系统基础信息页面
	@RequestMapping("/basic_info.htm")
	public String sysBasicInfo() {
		System.out.println("+显示系统基础信息页面++++++");
		
		return "/sys/sys_basic_info";
	}
	
	//显示辅助资料的页面
	@RequestMapping("/assist_info.htm")
	public String sysAssistInfo() {
		System.out.println("+显示辅助资料的页面++++++");
		
		return "/sys/sys_assist_info";
	}
	
	//显示员工与部门页面
	@RequestMapping("/dept_user.htm")
	public String sysDeptUser() {
		System.out.println("+显示员工与部门页面++++++");
		
		return "/sys/sys_dept_user";
	}
	
	//显示公司信息页面
	@RequestMapping("/company_info.htm")
	public String sysCompanyInfo() {
		System.out.println("++++显示公司信息页面++++++");
		
		return "/sys/sys_company_info";
	}
	
	
	
	//显示系统操作日志的页面
	@RequestMapping("/operate_log.htm")
	public String sysOperateLog() {
		System.out.println("+系统操作日志的页面++++++");
		
		return "/sys/sys_operate_log";
	}
}
