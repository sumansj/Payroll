package com.payroll.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.payroll.api.Employee;
import com.payroll.api.Leave;
import com.payroll.api.Salary;
import com.payroll.services.EmployeeService;
import com.payroll.services.LeaveService;
import com.payroll.services.SalaryService;


@Controller
public class EmployeeController {

	@Autowired
	SalaryService salaryService;
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	LeaveService leaveService;
	
	@GetMapping("/employee")
	public String showEmployee(@RequestParam("id") int id, Model model) {
		
		Employee aEmployee = employeeService.getEmployee(id);
		model.addAttribute("aEmployee", aEmployee);
		return "employeePage";
		
	}
	
	@GetMapping("/leaveReport")
	public String getReport(@RequestParam("id") int id, Model model) {
		
		Leave theLeave = leaveService.getLeave(id);
		
		model.addAttribute("leaveReport", theLeave);
		return "leaveBalance";
	}
	
	// to insert leave details
	@GetMapping("/addLeave")
	public String addLeave(@RequestParam("id") int id, Model model) {
		
		Employee theLeave = employeeService.getEmployee(id);
		model.addAttribute("addLeave", theLeave);
		Leave leave = new Leave();
		model.addAttribute("leaves", leave);
		return "addLeave";
	}
	
	
	//to insert the added leave details into record
	@PostMapping("/leaveApply")
	public String applyLeave(Leave leave) {
		
		leaveService.updateLeave(leave);
		return "redirect:/saved";
	}
	@ResponseBody
	@GetMapping("/saved")
	public String thankyou() {
		return "Your Leave applied successfully";
	}
	
	//to show the salaray report for all the months of a particular id
	@GetMapping("/showSalary")
	public String showSalary(@RequestParam("id") int id, Model model) {
		
		List<Salary> sList = salaryService.showSalaryList(id);
		model.addAttribute("list", sList);
		return "salary-report";
	}
	
	@GetMapping("/payslipReport")
	public String salaryReport(@RequestParam("id") int id, @RequestParam("month") String month, Model model) {
		
		//capturing the salary detials to show in payslip
		Salary salary = salaryService.paySalary(id, month);
		model.addAttribute("sList", salary);
		//capturing the leave details to show in payslip.
		Leave theLeave = leaveService.getLeave(id);
		model.addAttribute("leaveList", theLeave);
		return "paySlip";
	}
}
