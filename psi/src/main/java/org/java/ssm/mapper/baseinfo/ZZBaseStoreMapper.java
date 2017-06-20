package org.java.ssm.mapper.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseStore;

public interface ZZBaseStoreMapper {
	
	List<ZZBaseStore> findAll();
	
    int deleteByPrimaryKey(Integer stid);

    int insert(ZZBaseStore record);

    int insertSelective(ZZBaseStore record);

    ZZBaseStore selectByPrimaryKey(Integer stid);

    int updateByPrimaryKeySelective(ZZBaseStore record);

    int updateByPrimaryKey(ZZBaseStore record);
}