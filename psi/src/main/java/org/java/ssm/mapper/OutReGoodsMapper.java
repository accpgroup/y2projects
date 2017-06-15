package org.java.ssm.mapper;

import org.java.ssm.entity.OutReGoods;

public interface OutReGoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OutReGoods record);

    int insertSelective(OutReGoods record);

    OutReGoods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OutReGoods record);

    int updateByPrimaryKey(OutReGoods record);
}