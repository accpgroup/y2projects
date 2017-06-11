package org.java.ssm.controller;

import org.java.ssm.entity.SysRole;
import org.java.ssm.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/role")
public class SysRoleController {
	
	@Autowired
	private SysRoleService service;
	
	/**
	 * @Title:  editSysRole
	 * @Description:  
	 * @return String
	 */
	@RequestMapping("/edit.htm")
	public String editSysRole(Model model) {
		System.out.println("显示编辑角色信息的页面");
		SysRole role = service.selectByPrimaryKey(1);
		model.addAttribute("role", role);
		
		return "/sys/role/edit";
	}
	
	public String findAllSysRole() {
		return "";
	}

}
