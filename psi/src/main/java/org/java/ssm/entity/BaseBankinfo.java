package org.java.ssm.entity;

import java.io.Serializable;

public class BaseBankinfo implements Serializable{
    private Integer bfid;

    private String bfcardnum;

    private String bfname;

    private Double bfmoney;

    private String bfremark;

    public Integer getBfid() {
        return bfid;
    }

    public void setBfid(Integer bfid) {
        this.bfid = bfid;
    }

    public String getBfcardnum() {
        return bfcardnum;
    }

    public void setBfcardnum(String bfcardnum) {
        this.bfcardnum = bfcardnum == null ? null : bfcardnum.trim();
    }

    public String getBfname() {
        return bfname;
    }

    public void setBfname(String bfname) {
        this.bfname = bfname == null ? null : bfname.trim();
    }

    public Double getBfmoney() {
        return bfmoney;
    }

    public void setBfmoney(Double bfmoney) {
        this.bfmoney = bfmoney;
    }

    public String getBfremark() {
        return bfremark;
    }

    public void setBfremark(String bfremark) {
        this.bfremark = bfremark == null ? null : bfremark.trim();
    }
}