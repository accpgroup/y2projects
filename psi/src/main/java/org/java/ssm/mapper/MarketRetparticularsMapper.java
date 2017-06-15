package org.java.ssm.mapper;

import org.java.ssm.entity.MarketRetparticulars;

public interface MarketRetparticularsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MarketRetparticulars record);

    int insertSelective(MarketRetparticulars record);

    MarketRetparticulars selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MarketRetparticulars record);

    int updateByPrimaryKey(MarketRetparticulars record);
}