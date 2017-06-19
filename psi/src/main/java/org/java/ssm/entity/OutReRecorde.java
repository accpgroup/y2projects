package org.java.ssm.entity;

import java.io.Serializable;

public class OutReRecorde implements Serializable{
    private Integer id;

    private String outReCode;

    private String outReType;

    private String outReDate;

    private Integer repositoryId;

    private String billCode;

    private Integer dealEmpId;

    private Integer createEmpId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOutReCode() {
        return outReCode;
    }

    public void setOutReCode(String outReCode) {
        this.outReCode = outReCode == null ? null : outReCode.trim();
    }

    public String getOutReType() {
        return outReType;
    }

    public void setOutReType(String outReType) {
        this.outReType = outReType == null ? null : outReType.trim();
    }

    public String getOutReDate() {
        return outReDate;
    }

    public void setOutReDate(String outReDate) {
        this.outReDate = outReDate == null ? null : outReDate.trim();
    }

    public Integer getRepositoryId() {
        return repositoryId;
    }

    public void setRepositoryId(Integer repositoryId) {
        this.repositoryId = repositoryId;
    }

    public String getBillCode() {
        return billCode;
    }

    public void setBillCode(String billCode) {
        this.billCode = billCode == null ? null : billCode.trim();
    }

    public Integer getDealEmpId() {
        return dealEmpId;
    }

    public void setDealEmpId(Integer dealEmpId) {
        this.dealEmpId = dealEmpId;
    }

    public Integer getCreateEmpId() {
        return createEmpId;
    }

    public void setCreateEmpId(Integer createEmpId) {
        this.createEmpId = createEmpId;
    }
}