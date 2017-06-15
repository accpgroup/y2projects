package org.java.ssm.mapper;

import org.java.ssm.entity.AllotRecorde;

public interface AllotRecordeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AllotRecorde record);

    int insertSelective(AllotRecorde record);

    AllotRecorde selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AllotRecorde record);

    int updateByPrimaryKey(AllotRecorde record);
}