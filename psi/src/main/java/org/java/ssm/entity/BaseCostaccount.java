package org.java.ssm.entity;

public class BaseCostaccount {
    private Integer id;

    private String catouch;

    private String caname;

    private String caremark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCatouch() {
        return catouch;
    }

    public void setCatouch(String catouch) {
        this.catouch = catouch == null ? null : catouch.trim();
    }

    public String getCaname() {
        return caname;
    }

    public void setCaname(String caname) {
        this.caname = caname == null ? null : caname.trim();
    }

    public String getCaremark() {
        return caremark;
    }

    public void setCaremark(String caremark) {
        this.caremark = caremark == null ? null : caremark.trim();
    }
}