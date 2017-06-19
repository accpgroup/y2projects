package org.java.ssm.service.yangfeiservice;

import java.util.List;

import org.java.ssm.entity.BaseGood;

/**
 * 杨飞
 * 商品信息业务成
 * @author Administrator
 *
 */
public interface YFBaseGoodService {
   
	    //获得所有商品信息
		List<BaseGood> getAllGoods();
}
