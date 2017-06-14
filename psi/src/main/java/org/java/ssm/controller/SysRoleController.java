package org.java.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysPermission;
import org.java.ssm.entity.SysRole;
import org.java.ssm.service.SysPermissionService;
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
	@Autowired
	private SysPermissionService permissionService;
	
	@Autowired
	private SysRoleService roleService;
	
	
	/**
	 * 
	 * @Title:  showLimits
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @return String
	 */
	@RequestMapping("/showLimits.do")
	public String showLimits(Model model, String roleId){
		//角色所拥有的权限
		List<Map<String, Object>> rpMaps = service.findSysRolePermissionByRoleId(roleId);
		model.addAttribute("rpMaps", rpMaps);
		
		//所有操作权限
		List<SysPermission> list = permissionService.findAllSysPermission();
		model.addAttribute("permissions", list);
		
		//所有操作权限所属的父模块
		Map<String,String> moduleNames = getListConvertMap(list);
		model.addAttribute("moduleNames", moduleNames);
		
		//加载系统所有的角色
		List<SysRole> roles = roleService.findAllSysRole();
		model.addAttribute("roles",roles);
		
		//用角色下拉框的数据回显
		model.addAttribute("roleId",roleId);
		return "/sys/role/list";
	}
	
	private Map<String,String> getListConvertMap(List<SysPermission> list) {
		Map<String, String> map = new HashMap<>();
		for (SysPermission p : list) {
			map.put(p.getModule(), p.getModulename());
		}
		return map;
	}
	
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
