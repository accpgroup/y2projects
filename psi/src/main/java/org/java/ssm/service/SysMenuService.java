package org.java.ssm.service;

import java.util.List;
import java.util.Map;

/**
 * 菜单接口
 * @ClassName: SysMenuService 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月8日 下午6:19:09 
 *
 */
public interface SysMenuService {
	//查询
	List<Map<String, Object>> findAllSysMenu();

	//模拟菜单权限表
	List<String> findMenuModel();
	
	Map<String,String> findMenuModels();
}
