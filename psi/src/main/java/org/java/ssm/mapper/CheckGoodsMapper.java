package org.java.ssm.mapper;

import org.java.ssm.entity.CheckGoods;

public interface CheckGoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CheckGoods record);

    int insertSelective(CheckGoods record);

    CheckGoods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CheckGoods record);

    int updateByPrimaryKey(CheckGoods record);
}