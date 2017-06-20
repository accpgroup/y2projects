package org.java.ssm.service.impl.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseCostaccount;
import org.java.ssm.mapper.baseinfo.ZZBaseCostaccountMapper;
import org.java.ssm.service.baseinfo.ZZBaseCostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service("costService")
public class BaseCostServiceImpl implements ZZBaseCostService {
	
	@Autowired
	private ZZBaseCostaccountMapper mapper;

	@Override
	public PageInfo<ZZBaseCostaccount> findAll(Integer page,Integer size) {
		if(page == null){
			page=1;
		}
		if(size==null){
			size=5;
		}
		PageHelper.startPage(page,size);
		List<ZZBaseCostaccount> list=mapper.findAll();
		PageInfo<ZZBaseCostaccount> pageInfo = new PageInfo<>(list);
		return pageInfo;
	}

	@Override
	public int insertSelective(ZZBaseCostaccount record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(ZZBaseCostaccount record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public ZZBaseCostaccount selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

}
