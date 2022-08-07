package com.payroll.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.payroll.api.Salary;

public class SalaryRowMapper implements RowMapper<Salary> {

	@Override
	public Salary mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Salary salary = new Salary();
		
		salary.setId(rs.getInt(1));
		salary.setName(rs.getString(2));
		salary.setOffice_location(rs.getString(3));
		salary.setMonth(rs.getString(4));
		salary.setDays_paid(rs.getInt(5));
		salary.setLeaves(rs.getInt(6));
		salary.setAccount_no(rs.getLong(7));
		salary.setBasic_salary(rs.getLong(8));
		salary.setHouse_rent(rs.getLong(9));
		salary.setMiscellanous(rs.getLong(10));
		salary.setPerformance_pay(rs.getLong(11));
		salary.setProvident_fund(rs.getLong(12));
		salary.setHealth_insurance(rs.getLong(13));
		salary.setTotal(rs.getLong(14));
		salary.setPfPercentage(rs.getInt(15));
		salary.setRole(rs.getString(16));
		salary.setTotal_salary(rs.getLong(17));
		
		return salary;
	}

}
