package org.java.ssm.entity;

import java.io.Serializable;

public class PurchaseGoods implements Serializable{
    private Integer id;

    private Integer goodsId;

    private Integer preAmount;

    private Integer realAmount;

    private Double xiaoji;

    private Integer purchaseId;

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

    public Integer getPreAmount() {
        return preAmount;
    }

    public void setPreAmount(Integer preAmount) {
        this.preAmount = preAmount;
    }

    public Integer getRealAmount() {
        return realAmount;
    }

    public void setRealAmount(Integer realAmount) {
        this.realAmount = realAmount;
    }

    public Double getXiaoji() {
        return xiaoji;
    }

    public void setXiaoji(Double xiaoji) {
        this.xiaoji = xiaoji;
    }

    public Integer getPurchaseId() {
        return purchaseId;
    }

    public void setPurchaseId(Integer purchaseId) {
        this.purchaseId = purchaseId;
    }
}