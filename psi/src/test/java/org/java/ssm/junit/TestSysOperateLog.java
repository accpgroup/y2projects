package org.java.ssm.junit;

import java.util.List;
import java.util.Map;

import org.java.ssm.mapper.SysOperateLogMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class TestSysOperateLog extends BaseSpringTestCase{
	
	@Autowired
	private SysOperateLogMapper mapper;
	
	@Test
	public void findAllSysOperateLog() {
		List<Map<String, Object>> list = mapper.findAllSysOperateLog();
		for (Map<String, Object> map : list) {
			System.out.println(map.get("userName"));
		}
	}
}

