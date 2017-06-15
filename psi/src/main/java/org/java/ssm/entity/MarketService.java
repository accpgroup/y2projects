package org.java.ssm.entity;

import java.util.Date;

public class MarketService {
    private Integer id;

    private String serviceCard;

    private Integer unitId;

    private String telephone;

    private String linkman;

    private String productName;

    private String productVersion;

    private String manufacturer;

    private String produceTime;

    private String buyTime;

    private Integer invoicecard;

    private String actualuseTime;

    private String warrantyCard;

    private String serviceItem;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getServiceCard() {
        return serviceCard;
    }

    public void setServiceCard(String serviceCard) {
        this.serviceCard = serviceCard == null ? null : serviceCard.trim();
    }

    public Integer getUnitId() {
        return unitId;
    }

    public void setUnitId(Integer unitId) {
        this.unitId = unitId;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman == null ? null : linkman.trim();
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    public String getProductVersion() {
        return productVersion;
    }

    public void setProductVersion(String productVersion) {
        this.productVersion = productVersion == null ? null : productVersion.trim();
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer == null ? null : manufacturer.trim();
    }

    public String getProduceTime() {
        return produceTime;
    }

    public void setProduceTime(String produceTime) {
        this.produceTime = produceTime;
    }

    public String getBuyTime() {
        return buyTime;
    }

    public void setBuyTime(String buyTime) {
        this.buyTime = buyTime;
    }

    public Integer getInvoicecard() {
        return invoicecard;
    }

    public void setInvoicecard(Integer invoicecard) {
        this.invoicecard = invoicecard;
    }

    public String getActualuseTime() {
        return actualuseTime;
    }

    public void setActualuseTime(String actualuseTime) {
        this.actualuseTime = actualuseTime;
    }

    public String getWarrantyCard() {
        return warrantyCard;
    }

    public void setWarrantyCard(String warrantyCard) {
        this.warrantyCard = warrantyCard == null ? null : warrantyCard.trim();
    }

    public String getServiceItem() {
        return serviceItem;
    }

    public void setServiceItem(String serviceItem) {
        this.serviceItem = serviceItem == null ? null : serviceItem.trim();
    }
}