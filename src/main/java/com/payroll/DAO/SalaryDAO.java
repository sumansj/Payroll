package com.payroll.DAO;

import java.util.List;

import com.payroll.api.Salary;

public interface SalaryDAO {

	void saveSalary(Salary salary);
	
	List<Salary> loadSalary();
	
	Salary getSalary(int id, String month);
	
	List<Salary> showSalaryList(int id);
	
}
