package org.java.ssm.mapper.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseBankinfo;

public interface ZZBaseBankinfoMapper {
	List<ZZBaseBankinfo> findAll();
	
    int deleteByPrimaryKey(Integer bfid);

    int insert(ZZBaseBankinfo record);

    int insertSelective(ZZBaseBankinfo record);

    ZZBaseBankinfo selectByPrimaryKey(Integer bfid);

    int updateByPrimaryKeySelective(ZZBaseBankinfo record);

    int updateByPrimaryKey(ZZBaseBankinfo record);
}