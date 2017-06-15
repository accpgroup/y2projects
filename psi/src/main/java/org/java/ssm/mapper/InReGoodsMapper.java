package org.java.ssm.mapper;

import org.java.ssm.entity.InReGoods;

public interface InReGoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InReGoods record);

    int insertSelective(InReGoods record);

    InReGoods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InReGoods record);

    int updateByPrimaryKey(InReGoods record);
}