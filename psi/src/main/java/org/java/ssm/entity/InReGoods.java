package org.java.ssm.entity;

import java.io.Serializable;

public class InReGoods implements Serializable{
    private Integer id;

    private Integer goodsId;

    private Integer inAmount;

    private String inReCode;

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

    public Integer getInAmount() {
        return inAmount;
    }

    public void setInAmount(Integer inAmount) {
        this.inAmount = inAmount;
    }

    public String getInReCode() {
        return inReCode;
    }

    public void setInReCode(String inReCode) {
        this.inReCode = inReCode == null ? null : inReCode.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}