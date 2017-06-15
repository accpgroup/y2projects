package org.java.ssm.entity;

import java.util.Date;

public class MarketQuotation {
    private String quoatationCard;

    private String quoatationTime;

    private Integer unitId;

    private Integer empId;

    private String technicalIndex;

    private String remark;

    public String getQuoatationCard() {
        return quoatationCard;
    }

    public void setQuoatationCard(String quoatationCard) {
        this.quoatationCard = quoatationCard == null ? null : quoatationCard.trim();
    }

    public String getQuoatationTime() {
        return quoatationTime;
    }

    public void setQuoatationTime(String quoatationTime) {
        this.quoatationTime = quoatationTime;
    }

    public Integer getUnitId() {
        return unitId;
    }

    public void setUnitId(Integer unitId) {
        this.unitId = unitId;
    }

    public Integer getEmpId() {
        return empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public String getTechnicalIndex() {
        return technicalIndex;
    }

    public void setTechnicalIndex(String technicalIndex) {
        this.technicalIndex = technicalIndex == null ? null : technicalIndex.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}