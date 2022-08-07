package com.payroll.api;

public class Salary {

	private Integer id;
	private String name;
	private String role;
	private String office_location;
	private String month;
	private Integer days_paid;
	private Integer leaves;
	private Long account_no;
	private Long basic_salary;
	private Long house_rent;
	private Long miscellanous;
	private Long performance_pay;
	private Long provident_fund;
	private Long health_insurance;
	private Long total;
	private Integer pfPercentage;
	private Long total_salary;

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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getOffice_location() {
		return office_location;
	}

	public void setOffice_location(String office_location) {
		this.office_location = office_location;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public Integer getDays_paid() {
		return days_paid;
	}

	public void setDays_paid(Integer days_paid) {
		this.days_paid = days_paid;
	}

	public Integer getLeaves() {
		return leaves;
	}

	public void setLeaves(Integer leaves) {
		this.leaves = leaves;
	}

	public Long getAccount_no() {
		return account_no;
	}

	public void setAccount_no(Long account_no) {
		this.account_no = account_no;
	}

	public Long getBasic_salary() {
		return basic_salary;
	}

	public void setBasic_salary(Long basic_salary) {
		this.basic_salary = basic_salary;
	}

	public Long getHouse_rent() {
		return house_rent;
	}

	public void setHouse_rent(Long house_rent) {
		this.house_rent = house_rent;
	}

	public Long getMiscellanous() {
		return miscellanous;
	}

	public void setMiscellanous(Long miscellanous) {
		this.miscellanous = miscellanous;
	}

	public Long getPerformance_pay() {
		return performance_pay;
	}

	public void setPerformance_pay(Long performance_pay) {
		this.performance_pay = performance_pay;
	}

	public Long getProvident_fund() {
		return provident_fund;
	}

	public void setProvident_fund(Long provident_fund) {
		this.provident_fund = provident_fund;
	}

	public Long getHealth_insurance() {
		return health_insurance;
	}

	public void setHealth_insurance(Long health_insurance) {
		this.health_insurance = health_insurance;
	}

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	
	public Integer getPfPercentage() {
		return pfPercentage;
	}

	public void setPfPercentage(Integer pfPercentage) {
		this.pfPercentage = pfPercentage;
	}

	public Long getTotal_salary() {
		return total_salary;
	}

	public void setTotal_salary(Long total_salary) {
		this.total_salary = total_salary;
	}

	@Override
	public String toString() {
		return "Salary [id=" + id + ", name=" + name + ", role=" + role + ", office_location=" + office_location
				+ ", month=" + month + ", days_paid=" + days_paid + ", leaves=" + leaves + ", account_no=" + account_no
				+ ", basic_salary=" + basic_salary + ", house_rent=" + house_rent + ", miscellanous=" + miscellanous
				+ ", performance_pay=" + performance_pay + ", provident_fund=" + provident_fund + ", health_insurance="
				+ health_insurance + ", total=" + total + ", pfPercentage=" + pfPercentage + ", total_salary="
				+ total_salary + "]";
	}
	
}
