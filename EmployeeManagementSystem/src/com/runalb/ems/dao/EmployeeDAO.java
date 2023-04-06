package com.runalb.ems.dao;

import java.util.List;

import com.runalb.ems.entity.Employee;



public interface EmployeeDAO {
	
	public List<Employee> getEmployees();
	
	public void saveEmployee(Employee theEmployee);

	public Employee getEmployee(int theId);

	public void deleteEmployee(int theId);
}
