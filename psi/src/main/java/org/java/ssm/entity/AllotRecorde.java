package org.java.ssm.entity;

public class AllotRecorde {
    private Integer id;

    private String allotCode;

    private String createTime;

    private Integer outRepositoryId;

    private Integer inRepositoryId;

    private Integer createEmpId;

    private Integer assessEmpId;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAllotCode() {
        return allotCode;
    }

    public void setAllotCode(String allotCode) {
        this.allotCode = allotCode == null ? null : allotCode.trim();
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime == null ? null : createTime.trim();
    }

    public Integer getOutRepositoryId() {
        return outRepositoryId;
    }

    public void setOutRepositoryId(Integer outRepositoryId) {
        this.outRepositoryId = outRepositoryId;
    }

    public Integer getInRepositoryId() {
        return inRepositoryId;
    }

    public void setInRepositoryId(Integer inRepositoryId) {
        this.inRepositoryId = inRepositoryId;
    }

    public Integer getCreateEmpId() {
        return createEmpId;
    }

    public void setCreateEmpId(Integer createEmpId) {
        this.createEmpId = createEmpId;
    }

    public Integer getAssessEmpId() {
        return assessEmpId;
    }

    public void setAssessEmpId(Integer assessEmpId) {
        this.assessEmpId = assessEmpId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}