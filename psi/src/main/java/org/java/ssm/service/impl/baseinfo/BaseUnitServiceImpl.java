package org.java.ssm.service.impl.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseUnit;
import org.java.ssm.entity.baseinfo.ZZUnitHelper;
import org.java.ssm.mapper.baseinfo.ZZBaseUnitMapper;
import org.java.ssm.service.baseinfo.ZZBaseUnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service("unitService")
public class BaseUnitServiceImpl implements ZZBaseUnitService {
	
	@Autowired
	private ZZBaseUnitMapper mapper;

	@Override
	public PageInfo<ZZBaseUnit> findAll(ZZUnitHelper uh) {
		PageHelper.startPage(uh.getPage(),uh.getSize());
		List<ZZBaseUnit> list=mapper.findAll(uh);
		PageInfo<ZZBaseUnit> pageInfo = new PageInfo<>(list);
		return pageInfo;
	}
//	@Override
//	public List<BaseUnit> findAll() {
//		return mapper.findAll();
//	}

	@Override
	public ZZBaseUnit selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(ZZBaseUnit record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int insertSelective(ZZBaseUnit record) {
		return mapper.insertSelective(record);
	}

}
