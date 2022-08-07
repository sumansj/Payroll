package com.payroll.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.payroll.api.Employee;
import com.payroll.rowmapper.EmployeeRowMapper;

@Repository
public class EmployeeDaoImpl implements EmployeeDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void saveEmployee(Employee employee) {

		// write query to save records
		Object[] param = { employee.getId(), employee.getName(), employee.getDepartment(), employee.getEmail(),
				employee.getMobile(), employee.getRole(), employee.getOffice_location(), employee.getAddress(),
				employee.getHire_date(), employee.getEnd_date(), employee.getStatus() };
		
		

		String sqlQuery = "insert into empreports values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		// System.out.println("1 record inserted..");

		jdbcTemplate.update(sqlQuery, param);

	}

	@Override
	public List<Employee> loadEmployee() {

		String sqlQuery = "select * from empreports";
		List<Employee> list = jdbcTemplate.query(sqlQuery, new EmployeeRowMapper());

		return list;
	}

	@Override
	public Employee getEmployee(int id) {
		String sqlQuery = "select * from empReports where id = ?";
		Employee theEmployee = jdbcTemplate.queryForObject(sqlQuery, new EmployeeRowMapper(), id);
		return theEmployee;
	}

	@Override
	public void updateEmployee(Employee employee) {
		
		String sqlQuery = "update empreports set id=?, name=?, department=?, email=?, contact=?, role=?, office_location=?, address=?, hire_date=?, end_date=?, status=? where id=?";
		Object[] param = { employee.getId(), employee.getName(), employee.getDepartment(), employee.getEmail(),
				employee.getMobile(), employee.getRole(), employee.getOffice_location(), employee.getAddress(),
				employee.getHire_date(), employee.getEnd_date(), employee.getStatus(),employee.getId()};
		jdbcTemplate.update(sqlQuery, param);
	}

	@Override
	public void delete(int id) {
		String sqlQuery = "Delete from empreports where id=?";
		jdbcTemplate.update(sqlQuery, id);
		
	}

}
