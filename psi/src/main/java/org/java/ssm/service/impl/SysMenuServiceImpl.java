package org.java.ssm.service.impl;


import static org.hamcrest.CoreMatchers.nullValue;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.java.ssm.mapper.SysMenuMapper;
import org.java.ssm.service.SysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 菜单接口的实现类
 * @ClassName: SysMenuServiceImpl 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月8日 下午6:20:39 
 *
 */
@Service
public class SysMenuServiceImpl implements SysMenuService{
	@Autowired
	private SysMenuMapper mapper;

	@Override
	public List<Map<String, Object>> findAllSysMenu() {
		return mapper.findAllSysMenu();
	}

	@Override
	public List<String> findMenuModel() {
		return mapper.findMenuModel();
	}

	@Override
	public Map<String, String> findMenuModels() {
		List<Map<String, String>> list =  mapper.findMenuModels();
		Map<String, String> map = new HashMap<>();
		for (Map<String, String> m : list) {
			
			if (m.get("menuModule").equals(m.get("menuPrivilege"))) {
				map.put(m.get("menuModule"), m.get("menuModule"));	
			}
			//map.put(m.get("menuModule").toString(), m.get("menuModule").toString());
		}
		return map;
		
		//return null;
	}

}
