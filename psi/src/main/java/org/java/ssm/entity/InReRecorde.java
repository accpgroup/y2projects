package org.java.ssm.entity;

import java.io.Serializable;

public class InReRecorde implements Serializable{
    private Integer id;

    private String inReCode;

    private String inReType;

    private String recordeDate;

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

    public String getInReCode() {
        return inReCode;
    }

    public void setInReCode(String inReCode) {
        this.inReCode = inReCode == null ? null : inReCode.trim();
    }

    public String getInReType() {
        return inReType;
    }

    public void setInReType(String inReType) {
        this.inReType = inReType == null ? null : inReType.trim();
    }

    public String getRecordeDate() {
        return recordeDate;
    }

    public void setRecordeDate(String recordeDate) {
        this.recordeDate = recordeDate == null ? null : recordeDate.trim();
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