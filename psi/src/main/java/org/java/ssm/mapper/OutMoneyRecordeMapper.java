package org.java.ssm.mapper;

import org.java.ssm.entity.OutMoneyRecorde;

public interface OutMoneyRecordeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OutMoneyRecorde record);

    int insertSelective(OutMoneyRecorde record);

    OutMoneyRecorde selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OutMoneyRecorde record);

    int updateByPrimaryKey(OutMoneyRecorde record);
}