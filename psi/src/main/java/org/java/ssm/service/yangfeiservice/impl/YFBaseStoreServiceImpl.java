package org.java.ssm.service.yangfeiservice.impl;

import java.util.List;

import org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;
import org.java.ssm.entity.BaseStore;
import org.java.ssm.mapper.yangfeimapper.YFBaseStoreMapper;
import org.java.ssm.service.yangfeiservice.YFBaseStoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 杨飞
 * basestore实体类业务层
 * @author Administrator
 *
 */
@Service("yfStoreSer")
public class YFBaseStoreServiceImpl implements YFBaseStoreService{
    
	@Autowired
	private YFBaseStoreMapper mapper;
	
	
	//获得所有可用仓库
	@Override
	public List<BaseStore> getStores() {
		return mapper.getStores();
	}

}
