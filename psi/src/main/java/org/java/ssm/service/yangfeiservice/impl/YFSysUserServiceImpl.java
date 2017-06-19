package org.java.ssm.service.yangfeiservice.impl;

import java.util.List;

import org.java.ssm.entity.SysUser;
import org.java.ssm.mapper.yangfeimapper.YFSysUserMapper;
import org.java.ssm.service.yangfeiservice.YFSysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("yfUserSer")
public class YFSysUserServiceImpl implements YFSysUserService {

	@Autowired
	private YFSysUserMapper mapper;  //获得用户表数据存取对象
	
	@Override
	public List<SysUser> getAllUsers() {
		return mapper.getUsers();
	}

}
