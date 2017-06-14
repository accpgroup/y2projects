package org.java.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.java.ssm.entity.SysPermission;
import org.java.ssm.entity.SysRole;
import org.java.ssm.service.SysOperateLogService;
import org.java.ssm.service.SysPermissionService;
import org.java.ssm.service.SysRoleService;
import org.java.ssm.service.SysUserService;
import org.java.ssm.util.DataConvertUtil;
import org.java.ssm.util.PageUtil;
import org.java.ssm.vo.SysOperateLogQueryVo;
import org.java.ssm.vo.SysUserQueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/sys")
public class SysController {
	
	@Autowired
	private SysOperateLogService logService;
	
	@Autowired
	private SysUserService userService;
	
	@Autowired
	private SysPermissionService permissionService;
	
	@Autowired
	private SysRoleService roleService;
	
	@Autowired
	private HttpServletRequest request;
	
	
	
	//进入角色权限设置
	@RequestMapping("/role_list.htm")
	public String roleList(Model model) {
		List<SysPermission> list = permissionService.findAllSysPermission();
		model.addAttribute("permissions", list);
		Map<String,String> moduleNames = getListConvertMap(list);
		model.addAttribute("moduleNames", moduleNames);
		
		//加载系统所有的角色
		List<SysRole> roles = roleService.findAllSysRole();
		model.addAttribute("roles",roles);
		
		return "/sys/role/list";
	}
	
	private Map<String,String> getListConvertMap(List<SysPermission> list) {
		Map<String, String> map = new HashMap<>();
		for (SysPermission p : list) {
			map.put(p.getModule(), p.getModulename());
		}
		return map;
	}

	//进入部门设置页面
	@RequestMapping("/dept_list.htm")
	public String deptList() {
		
		
		return "/sys/dept/list";
	}
	
	//进入员工管理页面
	@RequestMapping("/user_list.htm")
	public String userList(SysUserQueryVo queryVo,Model model) {
		PageInfo<Map<String, Object>> pageInfo = userService.findAllSysUserByQueryVo(queryVo, PageUtil.getPageUtil(request));
		
		//System.out.println(pageInfo.getList());
		model.addAttribute("page", pageInfo);
		
		return "/sys/employee/list";
	}
	
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
	public String sysOperateLog(SysOperateLogQueryVo queryVo,HttpServletRequest request ,Model model) {
		System.out.println("+系统操作日志的页面++++++");
		PageInfo<Map<String, Object>> pageInfo = logService.findAllSysOperateLog(queryVo, PageUtil.getPageUtil(request));
		
		model.addAttribute("page", pageInfo);
		
		return "/sys/sys_operate_log";
	}
}
