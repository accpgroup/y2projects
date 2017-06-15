package org.java.ssm.mapper;

import org.java.ssm.entity.BaseCostaccount;

public interface BaseCostaccountMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BaseCostaccount record);

    int insertSelective(BaseCostaccount record);

    BaseCostaccount selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BaseCostaccount record);

    int updateByPrimaryKey(BaseCostaccount record);
}