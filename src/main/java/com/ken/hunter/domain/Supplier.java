package com.ken.hunter.domain;

/**
 * 供应商信息
 * 
 * @author Ken
 *
 */
public class Supplier {

	private Integer id;// 供应商ID
	private String sex;// 性别
	private String personInCharge;// 负责人
	private String tel;// 联系电话
	private String email;// 电子邮件
	private String address;// 供应商地址

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPersonInCharge() {
		return personInCharge;
	}

	public void setPersonInCharge(String personInCharge) {
		this.personInCharge = personInCharge;
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

	@Override
	public String toString() {
		return "Supplier [id=" + id + ", sex=" + sex + ", personInCharge=" + personInCharge + ", tel=" + tel
				+ ", email=" + email + ", address=" + address + "]";
	}

}
