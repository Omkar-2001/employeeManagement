package com.employeeService02.demo.service;

import java.util.List;


import com.employeeService02.demo.entity.employee;

import jakarta.servlet.http.HttpSession;



public interface serviceInterface {
 public employee saveEmployee (employee employee);
 public List<employee> fetch();
 public employee getEmployeebyId(String employeeId);
 public employee update(employee employee);
 public boolean deleteEmployeebyId(String Id);
 public employee loginProcess(employee emp);
 public void logout(String employeeId, HttpSession session);
}
