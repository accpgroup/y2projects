package org.java.ssm.service.yangfeiservice;

import java.util.List;

import org.java.ssm.entity.InReGoods;

/**
 * 杨飞
 * 入库单商品明细服务层
 * @author Administrator
 *
 */
public interface YFInReGoodsService {
   
	//插入一条入库单的所有商品信息
    int insert(List<InReGoods> list);
}
