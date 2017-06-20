package org.java.ssm.service.baseinfo;

import org.java.ssm.entity.baseinfo.ZZBaseUnit;
import org.java.ssm.entity.baseinfo.ZZUnitHelper;

import com.github.pagehelper.PageInfo;

/**
 * 用于往来单位信息
 * @author 周壮
 *
 */
public interface ZZBaseUnitService {
	public PageInfo<ZZBaseUnit> findAll(ZZUnitHelper uh);
	//查询所有
	//List<BaseUnit> findAll();
	//根据主键查询
	ZZBaseUnit selectByPrimaryKey(Integer id);
	//根据主键查询
	int updateByPrimaryKeySelective(ZZBaseUnit record);
	//智能添加
	int insertSelective(ZZBaseUnit record);
}
