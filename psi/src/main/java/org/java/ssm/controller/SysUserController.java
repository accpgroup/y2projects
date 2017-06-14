package org.java.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysDept;
import org.java.ssm.entity.SysPermission;
import org.java.ssm.entity.SysRole;
import org.java.ssm.service.SysDeptService;
import org.java.ssm.service.SysPermissionService;
import org.java.ssm.service.SysRoleService;
import org.java.ssm.util.DataConvertUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/company_user")
public class SysUserController {
	
	@Autowired
	private SysDeptService deptService;
	@Autowired
	private SysRoleService roleService;
	@Autowired
	private SysPermissionService permissionService;
	
	
	@RequestMapping("/add.htm")
	public String addSysUser(Model model) {
		//显示添加用户的页面
		System.out.println("显示添加用户的页面");
		
		//查出所职位信息
		List<SysDept> depts = deptService.findAllSysDept();
		model.addAttribute("selectSysDept", depts);
		
		//查出所有角色信息
		List<SysRole> roles = roleService.findAllSysRole();
		model.addAttribute("roles", roles);
		
		List<SysPermission> permissions = permissionService.findAllSysPermission();
		model.addAttribute("permissions", permissions);
		Map<String, String> moduleNames = getStringMap(permissions);
		model.addAttribute("moduleNames", moduleNames);
		
		
		return "/sys/employee/add";
	}
	
	private Map<String, String> getStringMap(List<SysPermission> permissions) {
		Map<String, String> map = new HashMap<>();
		for (SysPermission p : permissions) {
			map.put(p.getModule(), p.getModulename());
		}
		return map;
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
