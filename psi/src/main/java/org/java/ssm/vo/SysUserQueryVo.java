package org.java.ssm.vo;

import org.java.ssm.bean.SysUserBean;
import org.java.ssm.entity.SysUser;

public class SysUserQueryVo {
	private SysUser user;
	
	private SysUserBean userBean;

	public SysUser getUser() {
		return user;
	}

	public void setUser(SysUser user) {
		this.user = user;
	}

	public SysUserBean getUserBean() {
		return userBean;
	}

	public void setUserBean(SysUserBean userBean) {
		this.userBean = userBean;
	}
}
