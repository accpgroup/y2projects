package org.java.ssm.entity;

public class InMoneyRecorde {
    private Integer id;

    private String inMoneyCode;

    private Double amount;

    private Double alreadyAmount;

    private Integer bfId;

    private String inMoneyType;

    private String billCode;

    private String createTime;

    private Integer createEmpId;

    private String updateTime;

    private String inMoneyStatus;

    private String isEnd;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getInMoneyCode() {
        return inMoneyCode;
    }

    public void setInMoneyCode(String inMoneyCode) {
        this.inMoneyCode = inMoneyCode == null ? null : inMoneyCode.trim();
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

    public Integer getBfId() {
        return bfId;
    }

    public void setBfId(Integer bfId) {
        this.bfId = bfId;
    }

    public String getInMoneyType() {
        return inMoneyType;
    }

    public void setInMoneyType(String inMoneyType) {
        this.inMoneyType = inMoneyType == null ? null : inMoneyType.trim();
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

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime == null ? null : updateTime.trim();
    }

    public String getInMoneyStatus() {
        return inMoneyStatus;
    }

    public void setInMoneyStatus(String inMoneyStatus) {
        this.inMoneyStatus = inMoneyStatus == null ? null : inMoneyStatus.trim();
    }

    public String getIsEnd() {
        return isEnd;
    }

    public void setIsEnd(String isEnd) {
        this.isEnd = isEnd == null ? null : isEnd.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}