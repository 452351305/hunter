package com.ken.hunter.domain;

/**
 * 客户信息
 * @author Ken
 *
 */
public class Customer {

	private Integer id;// 客户ID
	private String name;// 客户名
	private String personInCharge;// 负责人
	private String tel;// 联系电话
	private String email;// 电子邮件
	private String address;// 地址
	private String industry;//所属行业
	private String enterprisescale;//企业规模
	private String communicater;//沟通人
	private String communicatetime;//沟通时间
	private String communicateresults;//沟通结果

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	
	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getEnterprisescale() {
		return enterprisescale;
	}

	public void setEnterprisescale(String enterprisescale) {
		this.enterprisescale = enterprisescale;
	}

	public String getCommunicater() {
		return communicater;
	}

	public void setCommunicater(String communicater) {
		this.communicater = communicater;
	}

	public String getCommunicatetime() {
		return communicatetime;
	}

	public void setCommunicatetime(String communicatetime) {
		this.communicatetime = communicatetime;
	}

	public String getCommunicateresults() {
		return communicateresults;
	}

	public void setCommunicateresults(String communicateresults) {
		this.communicateresults = communicateresults;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", personInCharge=" + personInCharge + ", tel=" + tel
				+ ", email=" + email + ", address=" + address + "]";
	}

}
