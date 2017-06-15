package org.java.ssm.mapper;

import org.java.ssm.entity.MarketInformation;

public interface MarketInformationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MarketInformation record);

    int insertSelective(MarketInformation record);

    MarketInformation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MarketInformation record);

    int updateByPrimaryKey(MarketInformation record);
}