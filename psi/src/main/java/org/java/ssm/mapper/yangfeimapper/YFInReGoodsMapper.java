package org.java.ssm.mapper.yangfeimapper;

import java.util.List;
import java.util.Map;

import org.java.ssm.entity.InReGoods;

/**
 * 杨飞，
 * 入库单明细
 * @author Administrator
 *
 */
public interface YFInReGoodsMapper {
    
    //插入一条入库的商品信息
    int insert(InReGoods record);

    //获得指定入库单的明细商品
   List<Map<String, Object>> getInReGoods(String code);
    

    
}