package org.java.ssm.service;

import org.java.ssm.entity.SysRole;

public interface SysRoleService {
	
	/**
     * @Title:  selectByPrimaryKey
     * @Description: 根据主键来查询角色信息 
     * @param id
     * @return SysRole
     */
    SysRole selectByPrimaryKey(Integer id);
}
