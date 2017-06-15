package org.java.ssm.entity;

public class SysMenuKey {
    private String menumodule;

    private String menuprivilege;

    public String getMenumodule() {
        return menumodule;
    }

    public void setMenumodule(String menumodule) {
        this.menumodule = menumodule == null ? null : menumodule.trim();
    }

    public String getMenuprivilege() {
        return menuprivilege;
    }

    public void setMenuprivilege(String menuprivilege) {
        this.menuprivilege = menuprivilege == null ? null : menuprivilege.trim();
    }
}