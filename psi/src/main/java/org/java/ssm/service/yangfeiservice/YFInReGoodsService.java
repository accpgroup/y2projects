package org.java.ssm.service.yangfeiservice;

import java.util.List;
import java.util.Map;

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
    
    //获得指定入库单的明细商品
    List<Map<String, Object>> getInReGoods(String code);
}
