package com.payroll.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payroll.DAO.EmployeeDAO;
import com.payroll.api.Employee;
import com.payroll.rowmapper.EmployeeRowMapper;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDAO employeeDao;
	
	@Override
	public void saveEmployee(Employee employee) {
		
		employeeDao.saveEmployee(employee);
	}

	@Override
	public List<Employee> loadEmployee() {
		
		List<Employee> list = employeeDao.loadEmployee();
		
		return list;
	}

	@Override
	public Employee getEmployee(int id) {
		
		Employee theEmployee = employeeDao.getEmployee(id);
		return theEmployee;
	}

	@Override
	public void updateEmployee(Employee employee) {
		
		employeeDao.updateEmployee(employee);
		
	}

	@Override
	public void delete(int id) {
		employeeDao.delete(id);
		
	}



}
