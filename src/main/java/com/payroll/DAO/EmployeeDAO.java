package com.payroll.DAO;

import java.util.List;

import com.payroll.api.Employee;

public interface EmployeeDAO {

	void saveEmployee(Employee employee);
	
	List<Employee> loadEmployee();
	
	Employee getEmployee(int id);
	
	void updateEmployee(Employee employee);
	
	void delete(int id);
	
}
