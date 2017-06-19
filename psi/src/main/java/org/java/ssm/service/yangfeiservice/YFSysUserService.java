package org.java.ssm.service.yangfeiservice;

import java.util.List;

import org.java.ssm.entity.SysUser;

/**
 * 杨飞
 * 系统员工表层
 * @author Administrator
 *
 */
public interface YFSysUserService {
	
	//获得所有员工
    List<SysUser> getAllUsers();
}
