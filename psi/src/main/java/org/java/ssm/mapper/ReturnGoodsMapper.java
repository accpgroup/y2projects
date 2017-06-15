package org.java.ssm.mapper;

import org.java.ssm.entity.ReturnGoods;

public interface ReturnGoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ReturnGoods record);

    int insertSelective(ReturnGoods record);

    ReturnGoods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ReturnGoods record);

    int updateByPrimaryKey(ReturnGoods record);
}