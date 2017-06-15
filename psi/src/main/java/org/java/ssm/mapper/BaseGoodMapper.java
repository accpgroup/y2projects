package org.java.ssm.mapper;

import org.java.ssm.entity.BaseGood;

public interface BaseGoodMapper {
    int deleteByPrimaryKey(Integer gdid);

    int insert(BaseGood record);

    int insertSelective(BaseGood record);

    BaseGood selectByPrimaryKey(Integer gdid);

    int updateByPrimaryKeySelective(BaseGood record);

    int updateByPrimaryKey(BaseGood record);
}