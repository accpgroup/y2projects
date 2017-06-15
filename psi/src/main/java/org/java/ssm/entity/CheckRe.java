package org.java.ssm.entity;

public class CheckRe {
    private Integer id;

    private String checkReCode;

    private String checkReDate;

    private Integer repositoryId;

    private Integer checkEmpId;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCheckReCode() {
        return checkReCode;
    }

    public void setCheckReCode(String checkReCode) {
        this.checkReCode = checkReCode == null ? null : checkReCode.trim();
    }

    public String getCheckReDate() {
        return checkReDate;
    }

    public void setCheckReDate(String checkReDate) {
        this.checkReDate = checkReDate == null ? null : checkReDate.trim();
    }

    public Integer getRepositoryId() {
        return repositoryId;
    }

    public void setRepositoryId(Integer repositoryId) {
        this.repositoryId = repositoryId;
    }

    public Integer getCheckEmpId() {
        return checkEmpId;
    }

    public void setCheckEmpId(Integer checkEmpId) {
        this.checkEmpId = checkEmpId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}