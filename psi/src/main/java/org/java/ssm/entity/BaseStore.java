package org.java.ssm.entity;

public class BaseStore {
    private Integer stid;

    private String stname;

    private String staddress;

    private String stremark;

    private Integer createrid;

    private String createtime;

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

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }

    public String getIsstatus() {
        return isstatus;
    }

    public void setIsstatus(String isstatus) {
        this.isstatus = isstatus == null ? null : isstatus.trim();
    }
}