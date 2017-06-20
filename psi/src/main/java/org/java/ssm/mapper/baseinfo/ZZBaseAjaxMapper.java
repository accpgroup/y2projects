package org.java.ssm.mapper.baseinfo;

import java.util.List;
import java.util.Map;

public interface ZZBaseAjaxMapper {
	List<Map<String, Object>> loadByUnit();
	
	List<Map<String, Object>> loadByGood();
}