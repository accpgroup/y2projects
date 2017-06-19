package org.java.ssm.entity;

import java.io.Serializable;

public class OutReGoods implements Serializable{
    private Integer id;

    private Integer goodsId;

    private Integer outAmount;

    private String outReCode;

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

    public Integer getOutAmount() {
        return outAmount;
    }

    public void setOutAmount(Integer outAmount) {
        this.outAmount = outAmount;
    }

    public String getOutReCode() {
        return outReCode;
    }

    public void setOutReCode(String outReCode) {
        this.outReCode = outReCode == null ? null : outReCode.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}