package org.java.ssm.service.yangfeiservice.impl;

import java.util.List;

import org.java.ssm.entity.BaseGood;
import org.java.ssm.mapper.yangfeimapper.YFBaseGoodMapper;
import org.java.ssm.service.yangfeiservice.YFBaseGoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("yfGoodSer")
public class YFBaseGoodServiceImpl implements YFBaseGoodService {

	@Autowired
	private YFBaseGoodMapper goodMapper;
	
	
	@Override
	public List<BaseGood> getAllGoods() {
		
		return goodMapper.getAllGoods();
	}

}
