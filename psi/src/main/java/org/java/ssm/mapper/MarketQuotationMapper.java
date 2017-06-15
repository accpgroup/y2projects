package org.java.ssm.mapper;

import org.java.ssm.entity.MarketQuotation;

public interface MarketQuotationMapper {
    int deleteByPrimaryKey(String quoatationCard);

    int insert(MarketQuotation record);

    int insertSelective(MarketQuotation record);

    MarketQuotation selectByPrimaryKey(String quoatationCard);

    int updateByPrimaryKeySelective(MarketQuotation record);

    int updateByPrimaryKey(MarketQuotation record);
}