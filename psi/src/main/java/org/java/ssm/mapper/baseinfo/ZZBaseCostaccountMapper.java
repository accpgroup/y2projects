package org.java.ssm.mapper.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseCostaccount;

public interface ZZBaseCostaccountMapper {
	List<ZZBaseCostaccount> findAll();
	
    int deleteByPrimaryKey(Integer id);

    int insert(ZZBaseCostaccount record);

    int insertSelective(ZZBaseCostaccount record);

    ZZBaseCostaccount selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ZZBaseCostaccount record);

    int updateByPrimaryKey(ZZBaseCostaccount record);
}