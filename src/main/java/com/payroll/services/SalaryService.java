package com.payroll.services;

import java.util.List;

import com.payroll.api.Salary;

public interface SalaryService {
	
	void saveSalary(Salary salary);

	List<Salary> loadSalary();
	
	Salary paySalary(int id, String month);
	
	List<Salary> showSalaryList(int id);
	
}
