package org.java.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.java.ssm.mapper.SysDictionaryTypeMapper;
import org.java.ssm.service.SysDictionaryTypeService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 系统数据字典Service接口的实现类
 * @ClassName: SysDictionaryTypeServiceImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月7日 上午11:41:59 
 *
 */
public class SysDictionaryTypeServiceImpl implements SysDictionaryTypeService{

	@Autowired
	private SysDictionaryTypeMapper mapper;
	
	@Override
	public List<Map<String, Object>> findSysDictionaryTypeByCode(String code) {
		return mapper.findSysDictionaryTypeByCode(code);
	}
	
}
