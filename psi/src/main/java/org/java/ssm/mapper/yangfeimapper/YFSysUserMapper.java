package org.java.ssm.mapper.yangfeimapper;

import java.util.List;
import java.util.Map;

import org.java.ssm.entity.SysUser;
import org.java.ssm.vo.SysUserQueryVo;

/**
 * 杨飞
 * 系统员工表dao层
 */
public interface YFSysUserMapper {
	
      List<SysUser> getUsers(); //获得所有员工
}