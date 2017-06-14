package org.java.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.java.ssm.mapper.SysUserMapper;
import org.java.ssm.service.SysUserService;
import org.java.ssm.util.PageUtil;
import org.java.ssm.vo.SysUserQueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

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

	@Override
	public PageInfo<Map<String, Object>> findAllSysUserByQueryVo(SysUserQueryVo queryVo,PageUtil pageUtil) {
		
		PageHelper.startPage(pageUtil.getPageNum(), pageUtil.getPageSize());
		List<Map<String, Object>> list = mapper.findAllSysUserByQueryVo(queryVo);
		
		PageInfo<Map<String, Object>> pageInfo = new PageInfo<>(list);
		
		return pageInfo;
	}
	
}
