package org.java.ssm.service.impl;

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

}
