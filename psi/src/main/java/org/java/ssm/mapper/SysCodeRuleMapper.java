package org.java.ssm.mapper;

import java.util.List;
import java.util.Map;

/**
 * 编码的Mapper类
 * @ClassName: SysCodeRuleMapper 
 * @Description: 用来编写获取编码规则的Mapper接口 
 * @author 作者：敖燕飞 
 * @date 2017年6月6日 上午2:03:27 
 *
 */
public interface SysCodeRuleMapper {
	
	/**
	 * 获取编码
	 * @Title:  getCodeByTabName
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param tabName
	 * @return String
	 */
	String getCodeByTabName(String tabName);
	
	/**
	 * 插入一条新的编码规则
	 * @Title:  insertSysCodeRule
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param sysCodeRule void
	 */
	void insertSysCodeRule(Map<String, Object> sysCodeRule);

	/**
	 * 根据业务表的名称查处一个编码规则的信息
	 * @Title:  findSysCodeRules
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param tabName
	 * @return List<Map<String,Object>>
	 */
	List<Map<String, Object>> findSysCodeRules(String tabName);

	/**
	 * 更新数据库表的的编码规则
	 * @Title:  updateSysCodeRule
	 * @Description: TODO(这里用一句话描述这个方法的作用) 
	 * @param sysCodeRule void
	 */
	void updateSysCodeRule(Map<String, Object> sysCodeRule);
}

