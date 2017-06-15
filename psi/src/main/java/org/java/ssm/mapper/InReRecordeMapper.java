package org.java.ssm.mapper;

import org.java.ssm.entity.InReRecorde;

public interface InReRecordeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(InReRecorde record);

    int insertSelective(InReRecorde record);

    InReRecorde selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(InReRecorde record);

    int updateByPrimaryKey(InReRecorde record);
}