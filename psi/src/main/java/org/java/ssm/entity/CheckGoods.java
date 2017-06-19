package org.java.ssm.entity;

import java.io.Serializable;

public class CheckGoods implements Serializable{
    private Integer id;

    private Integer goodsId;

    private String checkReCode;

    private Integer totalAmount;

    private Integer brokenAmount;

    private Integer wcAmount;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getCheckReCode() {
        return checkReCode;
    }

    public void setCheckReCode(String checkReCode) {
        this.checkReCode = checkReCode == null ? null : checkReCode.trim();
    }

    public Integer getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(Integer totalAmount) {
        this.totalAmount = totalAmount;
    }

    public Integer getBrokenAmount() {
        return brokenAmount;
    }

    public void setBrokenAmount(Integer brokenAmount) {
        this.brokenAmount = brokenAmount;
    }

    public Integer getWcAmount() {
        return wcAmount;
    }

    public void setWcAmount(Integer wcAmount) {
        this.wcAmount = wcAmount;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}