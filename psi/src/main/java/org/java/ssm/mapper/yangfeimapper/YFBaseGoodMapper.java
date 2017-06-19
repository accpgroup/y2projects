package org.java.ssm.mapper.yangfeimapper;

import java.util.List;

import org.java.ssm.entity.BaseGood;
/**
 * 杨飞
 * 商品表映射dao
 * @author Administrator
 *
 */
public interface YFBaseGoodMapper {
   
	//获得所有商品信息
	List<BaseGood> getAllGoods();
}