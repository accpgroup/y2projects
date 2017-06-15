package org.java.ssm.mapper;

import org.java.ssm.entity.BaseStore;

public interface BaseStoreMapper {
    int deleteByPrimaryKey(Integer stid);

    int insert(BaseStore record);

    int insertSelective(BaseStore record);

    BaseStore selectByPrimaryKey(Integer stid);

    int updateByPrimaryKeySelective(BaseStore record);

    int updateByPrimaryKey(BaseStore record);
}