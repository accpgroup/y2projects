package org.java.ssm.entity;

public class SysMenu extends SysMenuKey {
    private String supsubmenu;

    private Integer sort;

    private String menuname;

    private String title;

    private String url;

    private String target;

    private String icon;

    private String remark;

    public String getSupsubmenu() {
        return supsubmenu;
    }

    public void setSupsubmenu(String supsubmenu) {
        this.supsubmenu = supsubmenu == null ? null : supsubmenu.trim();
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname == null ? null : menuname.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target == null ? null : target.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}