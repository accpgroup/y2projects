package org.java.ssm.service.yangfeiservice.impl;

import java.util.List;

import org.java.ssm.entity.InRePageInfo;
import org.java.ssm.entity.InReRecorde;
import org.java.ssm.mapper.yangfeimapper.YFInReRecordeMapper;
import org.java.ssm.service.yangfeiservice.YFInReRecordeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service("inReSer")
public class YFInReRecordeServiceImpl implements YFInReRecordeService {
    
	@Autowired
	private YFInReRecordeMapper inreMapper;
	
	
	@Override
	public int insert(InReRecorde record) {
		
		return inreMapper.insert(record);
	}

	
	@Override
	public InRePageInfo selectByPage(InRePageInfo info) {
		List<InReRecorde> inreList =  inreMapper.selectByPage(info);
		int sum = inreMapper.getAllCounts(info);
		info.setInReList(inreList);
		info.setSum(sum);
		return info;
	}

}
