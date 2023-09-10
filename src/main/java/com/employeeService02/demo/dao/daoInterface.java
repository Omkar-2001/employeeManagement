package com.employeeService02.demo.dao;

import java.util.List;

import com.employeeService02.demo.entity.employee;

import jakarta.servlet.http.HttpSession;



public interface daoInterface
	{
		public employee saveEmployee(employee employee);
		public List<employee> fetch();
		public employee update (employee employee);
		public boolean deleteEmployeeById(String Id);
		public employee loginProcess(employee emp);
		 public void logout(String employeeId);
		
	}
