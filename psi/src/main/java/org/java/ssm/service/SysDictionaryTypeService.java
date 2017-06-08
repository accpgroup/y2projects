package org.java.ssm.service;

import java.util.List;
import java.util.Map;

/**
 * 系统数据字典的service接口
 * @ClassName: SysDictionaryTypeService 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月7日 上午11:40:32 
 *
 */
public interface SysDictionaryTypeService {
	
	/**
	 * 根据SysDictionaryType表的code字段查询出结果集
	 * @Title:  findSysDictionaryTypeByCode
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param code
	 * @return List<Map<String,Object>>
	 */
	List<Map<String , Object>> findSysDictionaryTypeByCode(String code);
}
