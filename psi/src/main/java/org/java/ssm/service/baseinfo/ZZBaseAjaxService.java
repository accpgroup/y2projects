package org.java.ssm.service.baseinfo;

import java.util.List;
import java.util.Map;

/**
 * 用于往来单位信息
 * @author 周壮
 *
 */
public interface ZZBaseAjaxService {
	List<Map<String, Object>> loadByUnit();
	
	List<Map<String, Object>> loadByGood();
}
