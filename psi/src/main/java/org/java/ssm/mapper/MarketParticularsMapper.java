package org.java.ssm.mapper;

import org.java.ssm.entity.MarketParticulars;

public interface MarketParticularsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MarketParticulars record);

    int insertSelective(MarketParticulars record);

    MarketParticulars selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MarketParticulars record);

    int updateByPrimaryKey(MarketParticulars record);
}