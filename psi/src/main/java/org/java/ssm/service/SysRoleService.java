package org.java.ssm.service;

import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysDept;
import org.java.ssm.entity.SysRole;

public interface SysRoleService {
	
	/**
     * @Title:  selectByPrimaryKey
     * @Description: 根据主键来查询角色信息 
     * @param id
     * @return SysRole
     */
    SysRole selectByPrimaryKey(Integer id);

	List<SysRole> findAllSysRole();

	List<Map<String, Object>> findSysRolePermissionByRoleId(String roleId);
}
