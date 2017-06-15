package org.java.ssm.entity;

public class SysOperateLog {
    private Integer id;

    private String username;

    private String cnname;

    private String actiontype;

    private String actiondate;

    private String actioncontent;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getCnname() {
        return cnname;
    }

    public void setCnname(String cnname) {
        this.cnname = cnname == null ? null : cnname.trim();
    }

    public String getActiontype() {
        return actiontype;
    }

    public void setActiontype(String actiontype) {
        this.actiontype = actiontype == null ? null : actiontype.trim();
    }

    public String getActiondate() {
        return actiondate;
    }

    public void setActiondate(String actiondate) {
        this.actiondate = actiondate == null ? null : actiondate.trim();
    }

    public String getActioncontent() {
        return actioncontent;
    }

    public void setActioncontent(String actioncontent) {
        this.actioncontent = actioncontent == null ? null : actioncontent.trim();
    }
}