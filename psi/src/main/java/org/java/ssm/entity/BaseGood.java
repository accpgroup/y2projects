package org.java.ssm.entity;

import java.io.Serializable;
import java.util.Date;

public class BaseGood implements Serializable {
    private Integer gdid;

    private String gdname;

    private String gdmemcode;

    private String gdwoocu;

    private String gdsort;

    private String gdtype;

    private String gdnorms;

    private String gdunit;

    private String gdorigin;

    private Integer gdmax;

    private Integer gdmin;

    private Double gdpreprice;

    private Double gdcosprice;

    private String gdpostfree;

    private String gdremark;

    private Integer createrid;

    private Date createtime;

    private Integer updaterid;

    private Date updatetime;

    private String delstatus;

    public Integer getGdid() {
        return gdid;
    }

    public void setGdid(Integer gdid) {
        this.gdid = gdid;
    }

    public String getGdname() {
        return gdname;
    }

    public void setGdname(String gdname) {
        this.gdname = gdname == null ? null : gdname.trim();
    }

    public String getGdmemcode() {
        return gdmemcode;
    }

    public void setGdmemcode(String gdmemcode) {
        this.gdmemcode = gdmemcode == null ? null : gdmemcode.trim();
    }

    public String getGdwoocu() {
        return gdwoocu;
    }

    public void setGdwoocu(String gdwoocu) {
        this.gdwoocu = gdwoocu == null ? null : gdwoocu.trim();
    }

    public String getGdsort() {
        return gdsort;
    }

    public void setGdsort(String gdsort) {
        this.gdsort = gdsort == null ? null : gdsort.trim();
    }

    public String getGdtype() {
        return gdtype;
    }

    public void setGdtype(String gdtype) {
        this.gdtype = gdtype == null ? null : gdtype.trim();
    }

    public String getGdnorms() {
        return gdnorms;
    }

    public void setGdnorms(String gdnorms) {
        this.gdnorms = gdnorms == null ? null : gdnorms.trim();
    }

    public String getGdunit() {
        return gdunit;
    }

    public void setGdunit(String gdunit) {
        this.gdunit = gdunit == null ? null : gdunit.trim();
    }

    public String getGdorigin() {
        return gdorigin;
    }

    public void setGdorigin(String gdorigin) {
        this.gdorigin = gdorigin == null ? null : gdorigin.trim();
    }

    public Integer getGdmax() {
        return gdmax;
    }

    public void setGdmax(Integer gdmax) {
        this.gdmax = gdmax;
    }

    public Integer getGdmin() {
        return gdmin;
    }

    public void setGdmin(Integer gdmin) {
        this.gdmin = gdmin;
    }

    public Double getGdpreprice() {
        return gdpreprice;
    }

    public void setGdpreprice(Double gdpreprice) {
        this.gdpreprice = gdpreprice;
    }

    public Double getGdcosprice() {
        return gdcosprice;
    }

    public void setGdcosprice(Double gdcosprice) {
        this.gdcosprice = gdcosprice;
    }

    public String getGdpostfree() {
        return gdpostfree;
    }

    public void setGdpostfree(String gdpostfree) {
        this.gdpostfree = gdpostfree == null ? null : gdpostfree.trim();
    }

    public String getGdremark() {
        return gdremark;
    }

    public void setGdremark(String gdremark) {
        this.gdremark = gdremark == null ? null : gdremark.trim();
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

    public Integer getUpdaterid() {
        return updaterid;
    }

    public void setUpdaterid(Integer updaterid) {
        this.updaterid = updaterid;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public String getDelstatus() {
        return delstatus;
    }

    public void setDelstatus(String delstatus) {
        this.delstatus = delstatus == null ? null : delstatus.trim();
    }
}