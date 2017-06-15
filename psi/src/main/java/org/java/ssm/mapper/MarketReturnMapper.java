package org.java.ssm.mapper;

import org.java.ssm.entity.MarketReturn;

public interface MarketReturnMapper {
    int deleteByPrimaryKey(String returnId);

    int insert(MarketReturn record);

    int insertSelective(MarketReturn record);

    MarketReturn selectByPrimaryKey(String returnId);

    int updateByPrimaryKeySelective(MarketReturn record);

    int updateByPrimaryKey(MarketReturn record);
}