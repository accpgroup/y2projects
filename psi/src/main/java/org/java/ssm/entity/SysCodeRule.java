package org.java.ssm.entity;

public class SysCodeRule {
    private Integer id;

    private String module;

    private String areaprefix;

    private String areatime;

    private Integer glidebit;

    private String currentcode;

    private String tabname;

    private String available;

    private String nextseq;

    private String curdate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module == null ? null : module.trim();
    }

    public String getAreaprefix() {
        return areaprefix;
    }

    public void setAreaprefix(String areaprefix) {
        this.areaprefix = areaprefix == null ? null : areaprefix.trim();
    }

    public String getAreatime() {
        return areatime;
    }

    public void setAreatime(String areatime) {
        this.areatime = areatime == null ? null : areatime.trim();
    }

    public Integer getGlidebit() {
        return glidebit;
    }

    public void setGlidebit(Integer glidebit) {
        this.glidebit = glidebit;
    }

    public String getCurrentcode() {
        return currentcode;
    }

    public void setCurrentcode(String currentcode) {
        this.currentcode = currentcode == null ? null : currentcode.trim();
    }

    public String getTabname() {
        return tabname;
    }

    public void setTabname(String tabname) {
        this.tabname = tabname == null ? null : tabname.trim();
    }

    public String getAvailable() {
        return available;
    }

    public void setAvailable(String available) {
        this.available = available == null ? null : available.trim();
    }

    public String getNextseq() {
        return nextseq;
    }

    public void setNextseq(String nextseq) {
        this.nextseq = nextseq == null ? null : nextseq.trim();
    }

    public String getCurdate() {
        return curdate;
    }

    public void setCurdate(String curdate) {
        this.curdate = curdate == null ? null : curdate.trim();
    }
}