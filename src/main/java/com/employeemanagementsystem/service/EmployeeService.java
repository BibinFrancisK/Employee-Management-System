package com.employeemanagementsystem.service;

import java.util.List;

import com.employeemanagementsystem.model.Employee;

public interface EmployeeService {
	
	List<Employee> getAllEmployees();
	void saveEmployee(Employee employee);
	public boolean determineStatus(Employee employee);
	public int calculateAge(Employee employee);
	Employee getEmployeeById(long id);
	public void deleteEmployeeById(long id);	
	
}