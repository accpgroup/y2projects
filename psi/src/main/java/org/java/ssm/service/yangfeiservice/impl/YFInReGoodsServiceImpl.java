package org.java.ssm.service.yangfeiservice.impl;

import java.util.List;

import org.java.ssm.entity.InReGoods;
import org.java.ssm.mapper.yangfeimapper.YFInReGoodsMapper;
import org.java.ssm.service.yangfeiservice.YFInReGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("inReGoodsSer")
public class YFInReGoodsServiceImpl implements YFInReGoodsService {
    
	
	
	@Autowired
	private  YFInReGoodsMapper goodsMapper;

	@Override
	public int insert(List<InReGoods> list) {
		for (InReGoods inReGoods : list) {
			goodsMapper.insert(inReGoods);
		}
		return 0;
	}
	
	
	
}
