package org.java.ssm.entity;

public class MarketParticulars {
    private Integer id;

    private Integer productCard;

    private Integer stid;

    private Integer number;

    private Double otherMoeny;

    private String remark;

    private Integer marketInfoid;

    private Double unitprice;

    private Double money;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductCard() {
        return productCard;
    }

    public void setProductCard(Integer productCard) {
        this.productCard = productCard;
    }

    public Integer getStid() {
        return stid;
    }

    public void setStid(Integer stid) {
        this.stid = stid;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Double getOtherMoeny() {
        return otherMoeny;
    }

    public void setOtherMoeny(Double otherMoeny) {
        this.otherMoeny = otherMoeny;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getMarketInfoid() {
        return marketInfoid;
    }

    public void setMarketInfoid(Integer marketInfoid) {
        this.marketInfoid = marketInfoid;
    }

    public Double getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(Double unitprice) {
        this.unitprice = unitprice;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }
}