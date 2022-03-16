package com.employeemanagementsystem.service;

import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeemanagementsystem.model.Employee;
import com.employeemanagementsystem.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;

	@Override
	public List<Employee> getAllEmployees() {
		return employeeRepository.findAll();

	}

	@Override
	public void saveEmployee(Employee employee) {
		this.employeeRepository.save(employee);

	}

	@Override
	public Employee getEmployeeById(long id) {
		Optional<Employee> optional = employeeRepository.findById(id);
		Employee employee = null;
		if (optional.isPresent())
			employee = optional.get();
		else
			throw new RuntimeException(" Employee not found for id :: " + id);
		return employee;
	}

	@Override
	public void deleteEmployeeById(long id) {
		this.employeeRepository.deleteById(id);
	}

	@Override
	public int calculateAge(Employee employee) {

		int age;
		String StrDOB = employee.getDOB().toString();
		String[] DOB = StrDOB.split(" ");
		String recDOB = DOB[2] + "-" + DOB[1] + "-" + DOB[5];
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MMM-yyyy");
		LocalDate localDateDOB = LocalDate.parse(recDOB, formatter);
		age = Period.between(localDateDOB, LocalDate.now()).getYears();
		if (age < 18) {
			throw new RuntimeException("Age must be greater than 18");
		} else {
			return age;
		}
	}

	@Override
	public boolean determineStatus(Employee employee) {
		if (employee.getStrStatus().equals("Enabled"))
			return true;
		return false;
	}

}