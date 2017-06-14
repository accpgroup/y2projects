package org.java.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysDept;
import org.java.ssm.entity.SysRole;
import org.java.ssm.mapper.SysRoleMapper;
import org.java.ssm.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysRoleServiceImpl implements SysRoleService{
	
	@Autowired
	private SysRoleMapper mapper;

	@Override
	public SysRole selectByPrimaryKey(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public List<SysRole> findAllSysRole() {
		return mapper.findAllSysRole();
	}

	@Override
	public List<Map<String, Object>> findSysRolePermissionByRoleId(String roleId) {
		return mapper.findSysRolePermissionByRoleId(roleId);
	}

}
