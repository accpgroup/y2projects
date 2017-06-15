package org.java.ssm.mapper;

import org.java.ssm.entity.PurchaseGoods;

public interface PurchaseGoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(PurchaseGoods record);

    int insertSelective(PurchaseGoods record);

    PurchaseGoods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(PurchaseGoods record);

    int updateByPrimaryKey(PurchaseGoods record);
}