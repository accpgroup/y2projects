package org.java.ssm.mapper;

import java.util.List;
import java.util.Map;

/**
 * 系统菜单的CRUD
 * @ClassName: SysMenuMapper 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月8日 下午3:55:12 
 *
 */
public interface SysMenuMapper {
	
	//查询
	List<Map<String, Object>> findAllSysMenu();

	List<String> findMenuModel();
	
	List<Map<String,String>> findMenuModels();
	
}
