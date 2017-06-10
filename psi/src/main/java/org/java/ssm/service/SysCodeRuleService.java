package org.java.ssm.service;

import java.util.List;
import java.util.Map;

public interface SysCodeRuleService {
	
	/**
	 * 获得自动生成的编号
	 * @Title:  getCodeByTabName
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param tabName
	 * @return String
	 */
	String getCodeByTabName(String tabName);
	
	void insertSysCodeRule(Map<String, Object> sysCodeRule);

	List<Map<String, Object>> findSysCodeRules(String tabName);

	void updateSysCodeRule(Map<String, Object> sysCodeRule);
}

