package org.java.ssm.service.baseinfo;



import org.java.ssm.entity.baseinfo.ZZBaseBankinfo;

import com.github.pagehelper.PageInfo;

/**
 * 用于往来单位信息
 * @author 周壮
 *
 */
public interface ZZBaseBankService {
	//查询所有
	PageInfo<ZZBaseBankinfo>  findAll(Integer page,Integer size);
	//删除
	int deleteByPrimaryKey(Integer bfid);
	
	int insertSelective(ZZBaseBankinfo record);
	
	int updateByPrimaryKeySelective(ZZBaseBankinfo record);
	
	ZZBaseBankinfo selectByPrimaryKey(Integer bfid);
}
