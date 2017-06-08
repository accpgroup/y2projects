package org.java.ssm.entity;

public class SysDept {
    private Integer id;

    private String code;

    private String name;

    private String suppercode;

    private Integer rank;

    private String pycode;

    private String property;

    private String remark;

    private String isstop;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSuppercode() {
        return suppercode;
    }

    public void setSuppercode(String suppercode) {
        this.suppercode = suppercode == null ? null : suppercode.trim();
    }

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public String getPycode() {
        return pycode;
    }

    public void setPycode(String pycode) {
        this.pycode = pycode == null ? null : pycode.trim();
    }

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property == null ? null : property.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getIsstop() {
        return isstop;
    }

    public void setIsstop(String isstop) {
        this.isstop = isstop == null ? null : isstop.trim();
    }
}