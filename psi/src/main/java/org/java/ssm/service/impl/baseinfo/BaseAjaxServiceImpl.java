package org.java.ssm.service.impl.baseinfo;

import java.util.List;
import java.util.Map;

import org.java.ssm.mapper.baseinfo.ZZBaseAjaxMapper;
import org.java.ssm.service.baseinfo.ZZBaseAjaxService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("ajaxService")
public class BaseAjaxServiceImpl implements ZZBaseAjaxService {
	
	@Autowired
	private ZZBaseAjaxMapper mapper;

	@Override
	public List<Map<String, Object>> loadByUnit() {
		// TODO Auto-generated method stub
		return mapper.loadByUnit();
	}

	@Override
	public List<Map<String, Object>> loadByGood() {
		// TODO Auto-generated method stub
		return mapper.loadByGood();
	}

	

	


}
