package org.java.ssm.mapper;

import org.java.ssm.entity.CheckRe;

public interface CheckReMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CheckRe record);

    int insertSelective(CheckRe record);

    CheckRe selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CheckRe record);

    int updateByPrimaryKey(CheckRe record);
}