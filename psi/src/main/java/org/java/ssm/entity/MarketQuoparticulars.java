package org.java.ssm.entity;

public class MarketQuoparticulars {
    private Integer id;

    private Integer productId;

    private String quoatationId;

    private Integer storeid;

    private Integer number;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getQuoatationId() {
        return quoatationId;
    }

    public void setQuoatationId(String quoatationId) {
        this.quoatationId = quoatationId == null ? null : quoatationId.trim();
    }

    public Integer getStoreid() {
        return storeid;
    }

    public void setStoreid(Integer storeid) {
        this.storeid = storeid;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}