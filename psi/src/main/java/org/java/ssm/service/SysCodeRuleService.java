package org.java.ssm.service;

import java.util.List;
import java.util.Map;

public interface SysCodeRuleService {
	
	String getCodeByTabName(String tabName);
	
	void insertSysCodeRule(Map<String, Object> sysCodeRule);

	List<Map<String, Object>> findSysCodeRules(String tabName);

	void updateSysCodeRule(Map<String, Object> sysCodeRule);
}

