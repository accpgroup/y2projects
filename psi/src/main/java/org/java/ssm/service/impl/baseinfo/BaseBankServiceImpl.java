package org.java.ssm.service.impl.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseBankinfo;
import org.java.ssm.mapper.baseinfo.ZZBaseBankinfoMapper;
import org.java.ssm.service.baseinfo.ZZBaseBankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service("bankService")
public class BaseBankServiceImpl implements ZZBaseBankService {
	
	@Autowired
	private ZZBaseBankinfoMapper mapper;

	@Override
	public PageInfo<ZZBaseBankinfo> findAll(Integer page,Integer size) {
		if(page == null){
			page=1;
		}
		if(size==null){
			size=5;
		}
		PageHelper.startPage(page,size);
		List<ZZBaseBankinfo> list=mapper.findAll();
		PageInfo<ZZBaseBankinfo> pageInfo = new PageInfo<>(list);
		return pageInfo;
	}

	//删除
	public int deleteByPrimaryKey(Integer bfid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(bfid);
	}

	@Override
	public int insertSelective(ZZBaseBankinfo record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(ZZBaseBankinfo record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public ZZBaseBankinfo selectByPrimaryKey(Integer bfid) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(bfid);
	}

	


}
