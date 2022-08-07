package com.payroll.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.payroll.api.Salary;
import com.payroll.rowmapper.SalaryRowMapper;

@Repository
public class SalaryDAOImpl implements SalaryDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public void saveSalary(Salary salary) {
		
		Object[] param = { salary.getId(), salary.getName(), salary.getOffice_location(), salary.getMonth(), salary.getDays_paid(), salary.getLeaves(), salary.getAccount_no(),
						salary.getBasic_salary(), salary.getHouse_rent(), salary.getMiscellanous(), salary.getPerformance_pay(), salary.getProvident_fund(),
						salary.getHealth_insurance(), salary.getTotal(), salary.getPfPercentage(), salary.getRole(), salary.getTotal_salary() };
		
		String sqlQuery = "insert into salary values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
//		System.out.println("1 record inserted");
		
		jdbcTemplate.update(sqlQuery, param);
		
		
	}

	@Override
	public List<Salary> loadSalary() {
		
		String sqlQuery = "select * from salary";
		List<Salary> list = jdbcTemplate.query(sqlQuery, new SalaryRowMapper());
		return list;
	}

	//Employee controller salary methods
	//-----------------------------------------------------------------------------------
	//to show the salary report of all the month for a particular id
	@Override
	public List<Salary> showSalaryList(int id) {
		String sql = " select * from salary where id = ?";
		List<Salary> sList = jdbcTemplate.query(sql, new SalaryRowMapper(), id);
		return sList;
	}
	
	//fetching salary for particular id
	public Salary getSalary(int id, String month) {
		String sql = "select * from salary where id =? and month=?";
		Salary theSalary = jdbcTemplate.queryForObject(sql, new SalaryRowMapper(),id, month);
		return theSalary;
	}

}
