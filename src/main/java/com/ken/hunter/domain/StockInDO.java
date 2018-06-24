package com.ken.hunter.domain;


import java.util.Date;

/**
 * 入库记录
 *
 * @author Ken
 */
public class StockInDO {

    /**
     * 入库记录
     */
    private Integer id;

    private Integer userId;
    /**
     * 员工ID
     */
    private Integer supplierID;

    /**
     * 员工名称
     */
    private String supplierName;

    /**
     * 员工性别
     */
    private String sex;

    /**
     * 员工电话
     */
    private String tel;

    /**
     * 员工邮箱
     */
    private String email;

    /**
     * 员工地址
     */
    private String address;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getSupplierID() {
		return supplierID;
	}

	public void setSupplierID(Integer supplierID) {
		this.supplierID = supplierID;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

    
}
