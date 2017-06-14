package org.java.ssm.service.impl;

import java.util.List;

import org.java.ssm.entity.SysPermission;
import org.java.ssm.mapper.SysPermissionMapper;
import org.java.ssm.service.SysPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysPermissionServiceImpl implements SysPermissionService{

	@Autowired
	private SysPermissionMapper mapper;
	
	@Override
	public List<SysPermission> findAllSysPermission() {
		return mapper.findAllSysPermission();
	}
}
