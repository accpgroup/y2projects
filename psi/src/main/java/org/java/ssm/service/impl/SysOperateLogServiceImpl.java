package org.java.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.java.ssm.mapper.SysOperateLogMapper;
import org.java.ssm.service.SysOperateLogService;
import org.java.ssm.util.PageUtil;
import org.java.ssm.vo.SysOperateLogQueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysOperateLogServiceImpl implements SysOperateLogService {
	
	@Autowired
	private SysOperateLogMapper mapper;

	@Override
	public List<Map<String, Object>> findAllSysOperateLog() {
		
		return mapper.findAllSysOperateLog();
	}

	@Override
	public PageInfo<Map<String, Object>> findAllSysOperateLog(SysOperateLogQueryVo queryVo,PageUtil pageUtil) {
		int pageNum = pageUtil.getPageNum();
		int pageSize = pageUtil.getPageSize();
		PageHelper.startPage(pageNum,pageSize);
		List<Map<String, Object>> list = mapper.findAllSysOperateLog(queryVo);
		PageInfo<Map<String, Object>> pageInfo = new PageInfo<>(list);
		return pageInfo;
	}
	
}
