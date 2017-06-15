package org.java.ssm.entity;

import java.util.Date;

public class MarketInformation {
    private Integer id;

    private String marketCard;

    private String marketTime;

    private Integer unitId;

    private Integer empId;

    private String invoiceWay;

    private String proceedsWay;

    private String gatheringDeadline;

    private Integer bankId;

    private Double sumMoney;

    private String remark;

    private Double spareMoney;

    private String marketStatu;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMarketCard() {
        return marketCard;
    }

    public void setMarketCard(String marketCard) {
        this.marketCard = marketCard == null ? null : marketCard.trim();
    }

    public String getMarketTime() {
        return marketTime;
    }

    public void setMarketTime(String marketTime) {
        this.marketTime = marketTime;
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

    public String getInvoiceWay() {
        return invoiceWay;
    }

    public void setInvoiceWay(String invoiceWay) {
        this.invoiceWay = invoiceWay == null ? null : invoiceWay.trim();
    }

    public String getProceedsWay() {
        return proceedsWay;
    }

    public void setProceedsWay(String proceedsWay) {
        this.proceedsWay = proceedsWay == null ? null : proceedsWay.trim();
    }

    public String getGatheringDeadline() {
        return gatheringDeadline;
    }

    public void setGatheringDeadline(String gatheringDeadline) {
        this.gatheringDeadline = gatheringDeadline;
    }

    public Integer getBankId() {
        return bankId;
    }

    public void setBankId(Integer bankId) {
        this.bankId = bankId;
    }

    public Double getSumMoney() {
        return sumMoney;
    }

    public void setSumMoney(Double sumMoney) {
        this.sumMoney = sumMoney;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Double getSpareMoney() {
        return spareMoney;
    }

    public void setSpareMoney(Double spareMoney) {
        this.spareMoney = spareMoney;
    }

    public String getMarketStatu() {
        return marketStatu;
    }

    public void setMarketStatu(String marketStatu) {
        this.marketStatu = marketStatu == null ? null : marketStatu.trim();
    }
}