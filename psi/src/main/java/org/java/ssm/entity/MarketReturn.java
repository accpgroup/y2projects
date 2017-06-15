package org.java.ssm.entity;

import java.util.Date;

public class MarketReturn {
    private String returnId;

    private Integer unitId;

    private Integer empId;

    private Double returnMoney;

    private String returnTime;

    private String returnStatu;

    public String getReturnId() {
        return returnId;
    }

    public void setReturnId(String returnId) {
        this.returnId = returnId == null ? null : returnId.trim();
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

    public Double getReturnMoney() {
        return returnMoney;
    }

    public void setReturnMoney(Double returnMoney) {
        this.returnMoney = returnMoney;
    }

    public String getReturnTime() {
        return returnTime;
    }

    public void setReturnTime(String returnTime) {
        this.returnTime = returnTime;
    }

    public String getReturnStatu() {
        return returnStatu;
    }

    public void setReturnStatu(String returnStatu) {
        this.returnStatu = returnStatu == null ? null : returnStatu.trim();
    }
}