package org.java.ssm.service.baseinfo;

import org.java.ssm.entity.baseinfo.ZZBaseStore;

import com.github.pagehelper.PageInfo;

/**
 * 用于往来单位信息
 * @author 周壮
 *
 */
public interface ZZBaseStoreService {
	//查询所有
	PageInfo<ZZBaseStore> findAll(Integer page,Integer size);
	
	//修改+删除 
	int updateByPrimaryKeySelective(ZZBaseStore record);
	
	//添加操作
		int insertSelective(ZZBaseStore record);
		
		ZZBaseStore selectByPrimaryKey(Integer stid);
}
