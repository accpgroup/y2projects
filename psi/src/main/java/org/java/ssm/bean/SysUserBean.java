package org.java.ssm.bean;

import org.java.ssm.entity.SysUser;

public class SysUserBean extends SysUser{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	//匹配查询
	public String mapping;

	public String getMapping() {
		return mapping;
	}

	public void setMapping(String mapping) {
		this.mapping = mapping;
	}
}
