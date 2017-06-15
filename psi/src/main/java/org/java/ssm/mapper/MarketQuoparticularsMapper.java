package org.java.ssm.mapper;

import org.java.ssm.entity.MarketQuoparticulars;

public interface MarketQuoparticularsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MarketQuoparticulars record);

    int insertSelective(MarketQuoparticulars record);

    MarketQuoparticulars selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MarketQuoparticulars record);

    int updateByPrimaryKey(MarketQuoparticulars record);
}