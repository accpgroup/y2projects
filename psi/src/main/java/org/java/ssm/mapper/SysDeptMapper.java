package org.java.ssm.mapper;

import java.util.List;

import org.java.ssm.entity.SysDept;

public interface SysDeptMapper {
	
	List<SysDept> findAllSysDept();
	
    int deleteByPrimaryKey(Integer id);

    int insert(SysDept record);

    int insertSelective(SysDept record);

    SysDept selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysDept record);

    int updateByPrimaryKey(SysDept record);
}