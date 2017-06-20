package org.java.ssm.service.baseinfo;

import org.java.ssm.entity.baseinfo.ZZBaseCostaccount;

import com.github.pagehelper.PageInfo;

/**
 * 用于往来单位信息
 * @author 周壮
 *
 */
public interface ZZBaseCostService {
	//查询所有
	PageInfo<ZZBaseCostaccount>  findAll(Integer page,Integer size);
	//添加操作
	int insertSelective(ZZBaseCostaccount record);
	//修改
	int updateByPrimaryKeySelective(ZZBaseCostaccount record);
	//根据主键查询
	ZZBaseCostaccount selectByPrimaryKey(Integer id);
	//删除
	int deleteByPrimaryKey(Integer id);
}
