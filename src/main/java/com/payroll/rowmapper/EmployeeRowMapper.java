package com.payroll.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.payroll.api.Employee;

public class EmployeeRowMapper implements RowMapper<Employee> {

	@Override
	public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Employee employee = new Employee();
		
		employee.setId(rs.getInt(1));
		employee.setName(rs.getString(2));
		employee.setDepartment(rs.getString(3));
		employee.setEmail(rs.getString(4));
		employee.setMobile(rs.getLong(5));
		employee.setRole(rs.getString(6));
		employee.setOffice_location(rs.getString(7));
		employee.setAddress(rs.getString(8));
		employee.setHire_date(rs.getDate(9));
		employee.setEnd_date(rs.getDate(10));
		employee.setStatus(rs.getString(11));
		
		return employee;
	}

}
