package org.java.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("company_user")
public class SysUserController {

	
	@RequestMapping("/add.htm")
	public String addSysUser() {
		//显示添加用户的页面
		System.out.println("显示添加用户的页面");
		
		return "/sys/employee/add";
	}
	
	@RequestMapping("/edit.htm")
	public String editSysUser() {
		//显示修改用户信息的页面
		System.out.println("显示修改用户信息的页面");
		
		return "/sys/employee/edit";
	}
	/**
	 * 
	 * @Title:  insertSysUser
	 * @Description: 添加系统用户 
	 * @return String
	 */
	@RequestMapping("/save")
	public String insertSysUser() {
		System.out.println("正在添加用户");
		
		return "";
	}
	
}
