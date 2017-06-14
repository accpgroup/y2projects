package org.java.ssm.entity;

import java.io.Serializable;
import java.util.Date;

public class SysUser implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;

    private String creator;

    private String createtime;

    private String updater;

    private String updatetime;

    private String remark;

    private String name;

    private String cnname;

    private String password;

    private String address;

    private String telephone;

    private String qq;

    private String email;

    private Date begindate;

    private Date enddate;

    private Integer roleid;

    private Integer deptid;

    private String accessfilelevel;

    private String status;

    private String nowaddress;

    private String identitycode;

    private String insurancecode;

    private String instancytelephone;

    private String sex;

    private Date birthday;

    private String personneltype;

    private String dutyname;

    private Date workdate;

    private String highschool;

    private String finishschool;

    private Date finishschooldate;

    private String officetelephone;

    private String avocation;

    private String strongsuit;

    private String organise;

    private String analyse;

    private String planing;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator == null ? null : creator.trim();
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime == null ? null : createtime.trim();
    }

    public String getUpdater() {
        return updater;
    }

    public void setUpdater(String updater) {
        this.updater = updater == null ? null : updater.trim();
    }

    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime == null ? null : updatetime.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getCnname() {
        return cnname;
    }

    public void setCnname(String cnname) {
        this.cnname = cnname == null ? null : cnname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getBegindate() {
        return begindate;
    }

    public void setBegindate(Date begindate) {
        this.begindate = begindate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public Integer getDeptid() {
        return deptid;
    }

    public void setDeptid(Integer deptid) {
        this.deptid = deptid;
    }

    public String getAccessfilelevel() {
        return accessfilelevel;
    }

    public void setAccessfilelevel(String accessfilelevel) {
        this.accessfilelevel = accessfilelevel == null ? null : accessfilelevel.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getNowaddress() {
        return nowaddress;
    }

    public void setNowaddress(String nowaddress) {
        this.nowaddress = nowaddress == null ? null : nowaddress.trim();
    }

    public String getIdentitycode() {
        return identitycode;
    }

    public void setIdentitycode(String identitycode) {
        this.identitycode = identitycode == null ? null : identitycode.trim();
    }

    public String getInsurancecode() {
        return insurancecode;
    }

    public void setInsurancecode(String insurancecode) {
        this.insurancecode = insurancecode == null ? null : insurancecode.trim();
    }

    public String getInstancytelephone() {
        return instancytelephone;
    }

    public void setInstancytelephone(String instancytelephone) {
        this.instancytelephone = instancytelephone == null ? null : instancytelephone.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPersonneltype() {
        return personneltype;
    }

    public void setPersonneltype(String personneltype) {
        this.personneltype = personneltype == null ? null : personneltype.trim();
    }

    public String getDutyname() {
        return dutyname;
    }

    public void setDutyname(String dutyname) {
        this.dutyname = dutyname == null ? null : dutyname.trim();
    }

    public Date getWorkdate() {
        return workdate;
    }

    public void setWorkdate(Date workdate) {
        this.workdate = workdate;
    }

    public String getHighschool() {
        return highschool;
    }

    public void setHighschool(String highschool) {
        this.highschool = highschool == null ? null : highschool.trim();
    }

    public String getFinishschool() {
        return finishschool;
    }

    public void setFinishschool(String finishschool) {
        this.finishschool = finishschool == null ? null : finishschool.trim();
    }

    public Date getFinishschooldate() {
        return finishschooldate;
    }

    public void setFinishschooldate(Date finishschooldate) {
        this.finishschooldate = finishschooldate;
    }

    public String getOfficetelephone() {
        return officetelephone;
    }

    public void setOfficetelephone(String officetelephone) {
        this.officetelephone = officetelephone == null ? null : officetelephone.trim();
    }

    public String getAvocation() {
        return avocation;
    }

    public void setAvocation(String avocation) {
        this.avocation = avocation == null ? null : avocation.trim();
    }

    public String getStrongsuit() {
        return strongsuit;
    }

    public void setStrongsuit(String strongsuit) {
        this.strongsuit = strongsuit == null ? null : strongsuit.trim();
    }

    public String getOrganise() {
        return organise;
    }

    public void setOrganise(String organise) {
        this.organise = organise == null ? null : organise.trim();
    }

    public String getAnalyse() {
        return analyse;
    }

    public void setAnalyse(String analyse) {
        this.analyse = analyse == null ? null : analyse.trim();
    }

    public String getPlaning() {
        return planing;
    }

    public void setPlaning(String planing) {
        this.planing = planing == null ? null : planing.trim();
    }
}