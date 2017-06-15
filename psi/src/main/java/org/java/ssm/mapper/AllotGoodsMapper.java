package org.java.ssm.mapper;

import org.java.ssm.entity.AllotGoods;

public interface AllotGoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AllotGoods record);

    int insertSelective(AllotGoods record);

    AllotGoods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AllotGoods record);

    int updateByPrimaryKey(AllotGoods record);
}