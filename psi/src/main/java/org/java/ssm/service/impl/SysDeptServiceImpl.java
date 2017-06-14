package org.java.ssm.service.impl;

import java.util.List;

import org.java.ssm.entity.SysDept;
import org.java.ssm.mapper.SysDeptMapper;
import org.java.ssm.service.SysDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 
 * @ClassName: SysDeptServiceImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月11日 下午6:33:20 
 *
 */
@Service
public class SysDeptServiceImpl implements SysDeptService{
	
	@Autowired
	private SysDeptMapper mapper;

	@Override
	public List<SysDept> findAllSysDept() {
		return mapper.findAllSysDept();
	}
}
