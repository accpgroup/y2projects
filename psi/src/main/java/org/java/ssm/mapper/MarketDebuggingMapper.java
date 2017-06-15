package org.java.ssm.mapper;

import org.java.ssm.entity.MarketDebugging;

public interface MarketDebuggingMapper {
    int insert(MarketDebugging record);

    int insertSelective(MarketDebugging record);
}