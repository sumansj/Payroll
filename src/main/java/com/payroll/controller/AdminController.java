package com.payroll.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.payroll.api.Employee;
import com.payroll.api.Salary;
import com.payroll.services.EmployeeService;
import com.payroll.services.SalaryService;


@Controller
public class AdminController {
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	SalaryService salaryService;
	
	@GetMapping("/admin")
	public String showAdmin() {
		
		return "adminPage";
		
	}
	
	@GetMapping("/add")
	public String addEmp(Model model) {
		
		Employee employee=new Employee();
		model.addAttribute("employee", employee);
		return "addEmployee";
	}
	
	@PostMapping("/save")
	public String insertRecord(Employee employee) {
		employeeService.saveEmployee(employee);
		return "redirect:/thankyou";
		
	}
	
	@ResponseBody
	@GetMapping("/thankyou")
	public String thankyou() {
		return "Your record saved successfully";
	}
	
	@GetMapping("/empReports")
	public String employeeRecord(Model model) {
		
		List<Employee> list = employeeService.loadEmployee();
		model.addAttribute("list", list);
		return "employee-list";
	}
	
	@GetMapping("/update")
	public String showUpdate(@RequestParam("id") int id, Model model) {
		
		Employee theEmpoyee = employeeService.getEmployee(id);
		model.addAttribute("employee", theEmpoyee);
		return "recordUpdate";
	}
	
	@PostMapping("/success")
	public String updateRecord(Employee employee) {
		
		employeeService.updateEmployee(employee);
		return "redirect:/thankyou";
	}
	
	
	// to add salary for employees
	@GetMapping("/addSalary")
	public String addSalary(Model model, @RequestParam("id") int id) {
		
		Employee theEmpoyee = employeeService.getEmployee(id);
		model.addAttribute("employee", theEmpoyee);
		Salary salary = new Salary();
		model.addAttribute("salary", salary);
		return "addSalary";
	}
	
	
	// to insert the added salary into the record
	@PostMapping("/saveSalary")
	public String insertSalary(Salary salary) {
		
			salaryService.saveSalary(salary);
			return "redirect:/salaryReports";
	}
	
	// to extract all the salary reports
	@GetMapping("/salaryReports")
	public String salaryReport(Model model) {
		
		List<Salary> sList = salaryService.loadSalary();
		model.addAttribute("sList", sList);
		return "salary-list";
	}
	
	
}
