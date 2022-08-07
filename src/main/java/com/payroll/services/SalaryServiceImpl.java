package com.payroll.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payroll.DAO.SalaryDAO;
import com.payroll.api.Salary;

@Service
public class SalaryServiceImpl implements SalaryService {

	@Autowired
	SalaryServiceImpl  mnthSalary;
	
	@Autowired
	SalaryDAO salaryDao;

	
	// to save insert salary for the employees.
	@Override
	public void saveSalary(Salary salary) {

		//setting the provident fund value
		salary.setProvident_fund((salary.getBasic_salary() + salary.getHouse_rent() + salary.getMiscellanous()
				+ salary.getPerformance_pay()) * (salary.getPfPercentage()) / 100);

		//setting the net salary value
		salary.setTotal((salary.getBasic_salary() + salary.getHouse_rent() + salary.getMiscellanous()
				+ salary.getPerformance_pay()) - (salary.getProvident_fund() + salary.getHealth_insurance()));
		
		//setting total salary value
		salary.setTotal_salary(salary.getBasic_salary() + salary.getHouse_rent() + salary.getMiscellanous() + salary.getPerformance_pay());
		salaryDao.saveSalary(salary);
	}
	
	//extract the salary reports for all employees
	@Override
	public List<Salary> loadSalary() {
		List<Salary> salary = salaryDao.loadSalary();
		return salary;
	}
	
	
	//EmployeeController salary methods
	//-------------------------------------------------------------------------------
	//to show the salary report of all the month for a particular id
	@Override
	public List<Salary> showSalaryList(int id) {
		List<Salary> sList = salaryDao.showSalaryList(id);
		return sList;
	}
	
	//to get the details in the payslip
	@Override
	public Salary paySalary(int id, String month) {
		
		//calling the getSalary method to get the salary for a particular id for particular month
		Salary updateSalary = mnthSalary.getSalary(id, month);
		return updateSalary;
	}
	
	//to get salary details of particular employee
	public Salary getSalary(int id, String month) {
		Salary theSalary = salaryDao.getSalary(id, month);
		return theSalary;
	}

}
