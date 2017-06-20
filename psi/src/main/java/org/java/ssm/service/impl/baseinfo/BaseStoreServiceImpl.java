package org.java.ssm.service.impl.baseinfo;

import java.util.List;

import org.java.ssm.entity.baseinfo.ZZBaseStore;
import org.java.ssm.mapper.baseinfo.ZZBaseStoreMapper;
import org.java.ssm.service.baseinfo.ZZBaseStoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service("storeService")
public class BaseStoreServiceImpl implements ZZBaseStoreService {
	
	@Autowired
	private ZZBaseStoreMapper mapper;

	@Override
	public PageInfo<ZZBaseStore> findAll(Integer page,Integer size) {
		if(page == null){
			page=1;
		}
		if(size==null){
			size=5;
		}
		PageHelper.startPage(page,size);
		List<ZZBaseStore> list=mapper.findAll();
		PageInfo<ZZBaseStore> pageInfo = new PageInfo<>(list);
		return pageInfo;
	}

	//修改+删除
		@Override
		public int updateByPrimaryKeySelective(ZZBaseStore record) {
			// TODO Auto-generated method stub
			return mapper.updateByPrimaryKeySelective(record);
		}

		@Override
		public int insertSelective(ZZBaseStore record) {
			return mapper.insertSelective(record);
			
		}

		@Override
		public ZZBaseStore selectByPrimaryKey(Integer stid) {
			return mapper.selectByPrimaryKey(stid);
		}


}
