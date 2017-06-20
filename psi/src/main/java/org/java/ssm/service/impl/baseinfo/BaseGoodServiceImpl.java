package org.java.ssm.service.impl.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseGood;
import org.java.ssm.entity.baseinfo.ZZGoodHelper;
import org.java.ssm.mapper.baseinfo.ZZBaseGoodMapper;
import org.java.ssm.service.baseinfo.ZZBaseGoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service("goodService")
public class BaseGoodServiceImpl implements ZZBaseGoodService {
	
	
	@Autowired
	private ZZBaseGoodMapper mapper;

	
	
	@Override
	public PageInfo<ZZBaseGood>  findAll(ZZGoodHelper gh) {
		PageHelper.startPage(gh.getPage(),gh.getSize());
		List<ZZBaseGood> list=mapper.findAll(gh);
		PageInfo<ZZBaseGood> pageInfo = new PageInfo<>(list);
		return pageInfo;
	}



	@Override
	public ZZBaseGood selectByPrimaryKey(Integer gdid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(gdid);
	}



	@Override
	public int insertSelective(ZZBaseGood record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}


	//修改+删除
	@Override
	public int updateByPrimaryKeySelective(ZZBaseGood record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(record);
	}

	


}
