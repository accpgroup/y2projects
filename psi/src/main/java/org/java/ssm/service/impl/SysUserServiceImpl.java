package org.java.ssm.service.impl;

import java.util.Map;

import org.java.ssm.mapper.SysUserMapper;
import org.java.ssm.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 
 * @ClassName: SysUserServiceImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月6日 下午5:14:02 
 *
 */
@Service
public class SysUserServiceImpl implements SysUserService{

	@Autowired
	private SysUserMapper mapper;
	
	@Override
	public Map<String, Object> login(String username) {
		return mapper.login(username).get(0);
	}
	
}
