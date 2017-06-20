package org.java.ssm.mapper.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseGood;
import org.java.ssm.entity.baseinfo.ZZGoodHelper;

public interface ZZBaseGoodMapper {
	List<ZZBaseGood> findAll(ZZGoodHelper gh);
	
    int deleteByPrimaryKey(Integer gdid);

    int insert(ZZBaseGood record);

    int insertSelective(ZZBaseGood record);

    ZZBaseGood selectByPrimaryKey(Integer gdid);

    int updateByPrimaryKeySelective(ZZBaseGood record);

    int updateByPrimaryKey(ZZBaseGood record);
}