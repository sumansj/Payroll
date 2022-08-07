package com.payroll.api;

import java.sql.Date;

public class Leave {

	private Integer id;
	private String name;
	private String office_location;
	private String role;
	private Integer casual_leave;
	private Integer earned_leave;
	private Integer sick_leave;
	private Integer flexi_leave;
	private Integer total_leave;
	private Date start_date;
	private Date end_date;
	private String leave_type;

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

	public String getOffice_location() {
		return office_location;
	}

	public void setOffice_location(String office_location) {
		this.office_location = office_location;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Integer getCasual_leave() {
		return casual_leave;
	}

	public void setCasual_leave(Integer casual_leave) {
		this.casual_leave = casual_leave;
	}

	public Integer getEarned_leave() {
		return earned_leave;
	}

	public void setEarned_leave(Integer earned_leave) {
		this.earned_leave = earned_leave;
	}

	public Integer getSick_leave() {
		return sick_leave;
	}

	public void setSick_leave(Integer sick_leave) {
		this.sick_leave = sick_leave;
	}

	public Integer getFlexi_leave() {
		return flexi_leave;
	}

	public void setFlexi_leave(Integer flexi_leave) {
		this.flexi_leave = flexi_leave;
	}

	public Integer getTotal_leave() {
		return total_leave;
	}

	public void setTotal_leave(Integer total_leave) {
		this.total_leave = total_leave;
	}

	

	public Date getStart_date() {
		return start_date;
	}

	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getLeave_type() {
		return leave_type;
	}

	public void setLeave_type(String leave_type) {
		this.leave_type = leave_type;
	}

	@Override
	public String toString() {
		return "Leave [id=" + id + ", name=" + name + ", office_location=" + office_location + ", role=" + role
				+ ", casual_leave=" + casual_leave + ", earned_leave=" + earned_leave + ", sick_leave=" + sick_leave
				+ ", flexi_leave=" + flexi_leave + ", total_leave=" + total_leave + ", start_date=" + start_date
				+ ", end_date=" + end_date + ", leave_type=" + leave_type + "]";
	}


}
