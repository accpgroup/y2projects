package org.java.ssm.mapper.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseUnit;
import org.java.ssm.entity.baseinfo.ZZUnitHelper;

public interface ZZBaseUnitMapper {
	List<ZZBaseUnit> findAll(ZZUnitHelper ut);
	
    int deleteByPrimaryKey(Integer id);

    int insert(ZZBaseUnit record);

    int insertSelective(ZZBaseUnit record);

    ZZBaseUnit selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ZZBaseUnit record);

    int updateByPrimaryKey(ZZBaseUnit record);
}