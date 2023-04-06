package com.runalb.ems.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.runalb.ems.dao.EmployeeDAO;
import com.runalb.ems.entity.Employee;
import com.runalb.ems.service.EmployeeService;


@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	
	@Autowired
	private EmployeeService employeeService;
	
	
	@RequestMapping("/list")
	public String listEmployee(Model theModel) {
		List<Employee> theEmployees = employeeService.getEmployees();
		theModel.addAttribute("employee",theEmployees);
		return "list-employee";
	}
	
	
	@GetMapping("/add")
	public String showFormForAdd(Model theModel) {
		// create model attribute to bind form data
		Employee theEmployee = new Employee();
		theModel.addAttribute("employee",theEmployee);
		return "employee-form";
	}

	
	@PostMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute("customer") Employee theEmployee) {
		employeeService.saveEmployee(theEmployee);
		return "redirect:/employee/list";
	}
	
	
	@GetMapping("/update")
	public String showFormForUpdate(@RequestParam("employeeId") int theId, Model theModel) {
		Employee theEmployee = employeeService.getEmployee(theId);	
		theModel.addAttribute("employee", theEmployee);
		return "employee-form";
	}
	
	
	@GetMapping("/delete")
	public String deleteEmployee(@RequestParam("employeeId") int theId) {
		employeeService.deleteEmployee(theId);
		return "redirect:/employee/list";
	}
	
	
	
	
}
