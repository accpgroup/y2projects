package org.java.ssm.entity;

import java.util.Date;

public class MarketDebugging {
    private String serviceCode;

    private Integer unitId;

    private String telephone;

    private String linkman;

    private String productName;

    private String productVersion;

    private String manufacturer;

    private String debugTime;

    private String debugInfo;

    private String debugIdea;

    public String getServiceCode() {
        return serviceCode;
    }

    public void setServiceCode(String serviceCode) {
        this.serviceCode = serviceCode == null ? null : serviceCode.trim();
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

    public String getDebugTime() {
        return debugTime;
    }

    public void setDebugTime(String debugTime) {
        this.debugTime = debugTime;
    }

    public String getDebugInfo() {
        return debugInfo;
    }

    public void setDebugInfo(String debugInfo) {
        this.debugInfo = debugInfo == null ? null : debugInfo.trim();
    }

    public String getDebugIdea() {
        return debugIdea;
    }

    public void setDebugIdea(String debugIdea) {
        this.debugIdea = debugIdea == null ? null : debugIdea.trim();
    }
}