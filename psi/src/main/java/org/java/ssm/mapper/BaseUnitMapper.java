package org.java.ssm.mapper;

import org.java.ssm.entity.BaseUnit;

public interface BaseUnitMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BaseUnit record);

    int insertSelective(BaseUnit record);

    BaseUnit selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BaseUnit record);

    int updateByPrimaryKey(BaseUnit record);
}