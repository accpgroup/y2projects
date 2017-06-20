package org.java.ssm.service.baseinfo;

import org.java.ssm.entity.baseinfo.ZZBaseGood;
import org.java.ssm.entity.baseinfo.ZZGoodHelper;

import com.github.pagehelper.PageInfo;

/**
 * 用于往来单位信息
 * @author 周壮
 *
 */
public interface ZZBaseGoodService {
	//添加
	int insertSelective(ZZBaseGood record);
	//修改+删除 
	int updateByPrimaryKeySelective(ZZBaseGood record);
	
	ZZBaseGood selectByPrimaryKey(Integer gdid);

	//查询所有
	
	PageInfo<ZZBaseGood>  findAll(ZZGoodHelper gh);
	
	//根据主键查询
}
