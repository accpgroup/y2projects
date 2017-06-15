package org.java.ssm.mapper;

import org.java.ssm.entity.MarketService;

public interface MarketServiceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MarketService record);

    int insertSelective(MarketService record);

    MarketService selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MarketService record);

    int updateByPrimaryKey(MarketService record);
}