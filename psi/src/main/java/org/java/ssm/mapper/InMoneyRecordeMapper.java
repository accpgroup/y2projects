package org.java.ssm.mapper;

import org.java.ssm.entity.InMoneyRecorde;

public interface InMoneyRecordeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InMoneyRecorde record);

    int insertSelective(InMoneyRecorde record);

    InMoneyRecorde selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InMoneyRecorde record);

    int updateByPrimaryKey(InMoneyRecorde record);
}