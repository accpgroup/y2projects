package org.java.ssm.mapper;

import java.util.List;

import org.java.ssm.entity.SysPermission;

/**
 * 
 * @ClassName: SysPermissionMapper 
 * @Description: TODO(这里用一句话描述这个类的作用) 
 * @author 作者：敖燕飞 
 * @date 2017年6月11日 下午9:31:44 
 *
 */
public interface SysPermissionMapper {
	
	List<SysPermission> findAllSysPermission();
	
    int deleteByPrimaryKey(Integer id);

    int insert(SysPermission record);

    int insertSelective(SysPermission record);

    SysPermission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysPermission record);

    int updateByPrimaryKey(SysPermission record);
}