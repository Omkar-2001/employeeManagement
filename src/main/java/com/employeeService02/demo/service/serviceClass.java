package com.employeeService02.demo.service;




import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeeService02.demo.dao.daoClass;
import com.employeeService02.demo.entity.employee;
import com.employeeService02.demo.repo.employeeRepository;

import jakarta.servlet.http.HttpSession;


@Service
public class serviceClass implements serviceInterface {
	@Autowired
	daoClass dao;
	

	@Override
	public employee saveEmployee(employee employee) {
		String employeeId=new SimpleDateFormat("ddMMyyyyhhmmssms").format(new Date());
		employee.setEmployeeId(employeeId);
		String createdDate=new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(new Date());
		employee.setDateCreated(createdDate);
		employee emp= dao.saveEmployee(employee);
		
		return emp;
	}

	public List<employee> fetch() {
		List<employee>list=dao.fetch();
		return list;
		
		
	}

	@Override
	public employee getEmployeebyId(String employeeId) {
         employee emp=dao.getEmployeebyId(employeeId);
		
		return emp;
	
	}

	@Override
	public employee update(employee employee) {
		String createdDate=new SimpleDateFormat("dd-MM-yyyy hh:mm:ss").format(new Date());
		employee.setDateCreated(createdDate);
		employee emp=dao.update(employee);
		return emp;
	}

	@Override
	public boolean deleteEmployeebyId(String Id) {
		boolean emp=dao.deleteEmployeeById(Id);
		return emp;
	}

	@Override
	public employee loginProcess(employee emp) {
		System.out.println("in service"+emp);
	
		employee emp1=dao.loginProcess(emp);
		
		System.out.println("in service"+emp1);
		return emp1;
	}



	@Override
	public void logout(String employeeId, HttpSession session) 
	{
	dao.logout(employeeId);
	session.invalidate();
		
	}
	
	
	
	
	
	



}
