package org.java.ssm.entity.baseinfo;

import java.util.Date;

public class ZZBaseStore {
    private Integer stid;

    private String stname;

    private String staddress;

    private String stremark;

    private Integer createrid;

    private Date createtime;

    private String isstatus;

    public Integer getStid() {
        return stid;
    }

    public void setStid(Integer stid) {
        this.stid = stid;
    }

    public String getStname() {
        return stname;
    }

    public void setStname(String stname) {
        this.stname = stname == null ? null : stname.trim();
    }

    public String getStaddress() {
        return staddress;
    }

    public void setStaddress(String staddress) {
        this.staddress = staddress == null ? null : staddress.trim();
    }

    public String getStremark() {
        return stremark;
    }

    public void setStremark(String stremark) {
        this.stremark = stremark == null ? null : stremark.trim();
    }

    public Integer getCreaterid() {
        return createrid;
    }

    public void setCreaterid(Integer createrid) {
        this.createrid = createrid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getIsstatus() {
        return isstatus;
    }

    public void setIsstatus(String isstatus) {
        this.isstatus = isstatus == null ? null : isstatus.trim();
    }

	@Override
	public String toString() {
		return "BaseStore [stid=" + stid + ", stname=" + stname + ", staddress=" + staddress + ", stremark=" + stremark
				+ ", createrid=" + createrid + ", createtime=" + createtime + ", isstatus=" + isstatus + "]";
	}
    
    
}