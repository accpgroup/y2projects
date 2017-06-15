package org.java.ssm.mapper;

import org.java.ssm.entity.BaseBankinfo;

public interface BaseBankinfoMapper {
    int deleteByPrimaryKey(Integer bfid);

    int insert(BaseBankinfo record);

    int insertSelective(BaseBankinfo record);

    BaseBankinfo selectByPrimaryKey(Integer bfid);

    int updateByPrimaryKeySelective(BaseBankinfo record);

    int updateByPrimaryKey(BaseBankinfo record);
}