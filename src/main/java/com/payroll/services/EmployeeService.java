package com.payroll.services;

import java.util.List;

import com.payroll.api.Employee;

public interface EmployeeService {

	void saveEmployee(Employee employee);
	
	List<Employee> loadEmployee();
	
	Employee getEmployee(int id);
	
	void updateEmployee(Employee employee);
	
	void delete(int id);
	
}
