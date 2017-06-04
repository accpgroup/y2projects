package org.java.ssm.entity;

import java.io.Serializable;

public class Country implements Serializable{
    
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String countryname;

    private String countrycode;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCountryname() {
        return countryname;
    }

    public void setCountryname(String countryname) {
        this.countryname = countryname == null ? null : countryname.trim();
    }

    public String getCountrycode() {
        return countrycode;
    }

    public void setCountrycode(String countrycode) {
        this.countrycode = countrycode == null ? null : countrycode.trim();
    }
}