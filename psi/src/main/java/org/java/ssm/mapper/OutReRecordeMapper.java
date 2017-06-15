package org.java.ssm.mapper;

import org.java.ssm.entity.OutReRecorde;

public interface OutReRecordeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OutReRecorde record);

    int insertSelective(OutReRecorde record);

    OutReRecorde selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OutReRecorde record);

    int updateByPrimaryKey(OutReRecorde record);
}