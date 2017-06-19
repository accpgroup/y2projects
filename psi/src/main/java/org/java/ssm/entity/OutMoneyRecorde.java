package org.java.ssm.entity;

import java.io.Serializable;

public class OutMoneyRecorde implements Serializable{
    private Integer id;

    private String outMoenyCode;

    private Double amount;

    private Double alreadyAmount;

    private Integer bfid;

    private String outMoneyType;

    private String billCode;

    private String createTime;

    private Integer createEmpId;

    private String remark;

    private String outMoneyStatus;

    private String isEnd;

    private String updateTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOutMoenyCode() {
        return outMoenyCode;
    }

    public void setOutMoenyCode(String outMoenyCode) {
        this.outMoenyCode = outMoenyCode == null ? null : outMoenyCode.trim();
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Double getAlreadyAmount() {
        return alreadyAmount;
    }

    public void setAlreadyAmount(Double alreadyAmount) {
        this.alreadyAmount = alreadyAmount;
    }

    public Integer getBfid() {
        return bfid;
    }

    public void setBfid(Integer bfid) {
        this.bfid = bfid;
    }

    public String getOutMoneyType() {
        return outMoneyType;
    }

    public void setOutMoneyType(String outMoneyType) {
        this.outMoneyType = outMoneyType == null ? null : outMoneyType.trim();
    }

    public String getBillCode() {
        return billCode;
    }

    public void setBillCode(String billCode) {
        this.billCode = billCode == null ? null : billCode.trim();
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime == null ? null : createTime.trim();
    }

    public Integer getCreateEmpId() {
        return createEmpId;
    }

    public void setCreateEmpId(Integer createEmpId) {
        this.createEmpId = createEmpId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getOutMoneyStatus() {
        return outMoneyStatus;
    }

    public void setOutMoneyStatus(String outMoneyStatus) {
        this.outMoneyStatus = outMoneyStatus == null ? null : outMoneyStatus.trim();
    }

    public String getIsEnd() {
        return isEnd;
    }

    public void setIsEnd(String isEnd) {
        this.isEnd = isEnd == null ? null : isEnd.trim();
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime == null ? null : updateTime.trim();
    }
}