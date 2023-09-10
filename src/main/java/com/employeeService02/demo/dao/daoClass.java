package com.employeeService02.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.employeeService02.demo.entity.employee;

import jakarta.servlet.http.HttpSession;


@Repository
public class daoClass implements daoInterface {
	@Autowired
	SessionFactory sf;
	

	@Override
	public employee saveEmployee(employee employee) {
		Session ses= sf.openSession();
		Transaction tx= ses.beginTransaction();
		employee emp= null;
		try {
			emp=employee;
			ses.save(employee);
			tx.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally {
			ses.close();
		}
		
		return employee;
	}


	public List<employee> fetch() {
		List<employee> list=null;
		Session ses=sf.openSession();
		
		try {
			Query qr= ses.createQuery("from employee");
			list=qr.list();
//			return list;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally {
			ses.close();
		}
		return list;
		
	}


	public employee getEmployeebyId(String employeeId) {
		Session ses=sf.openSession();
		employee emp=null;
		try {
			
			employee emp1=ses.get(employee.class, employeeId);
			emp=emp1;
			return emp1;
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			ses.close();
		}
		return emp;
	}


	@Override
	public employee update(employee employee) {
		Session ses= sf.openSession();
		Transaction tx=ses.beginTransaction();
		employee employee1=null;
		try {
		    employee emp=ses.get(employee.class, employee.getEmployeeId());
		    emp.setUserName(employee.getUserName());
		    emp.setPassword(employee.getPassword());
		    emp.setRole(employee.getRole());
		    emp.setSalary(employee.getSalary());
		    emp.setDepartment(employee.getDepartment());
		    emp.setDateCreated(employee.getDateCreated());
		    emp.setSecurityQuestion(employee.getSecurityQuestion());
		    emp.setAnswer(employee.getAnswer());
		    emp.setStatus(employee.getStatus());
		    emp.setEmail(employee.getEmail());
		    emp.setPhone(employee.getPhone());
		    emp.setGender(employee.getGender());
		    employee1=emp;
		    tx.commit();
		    
		    
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			ses.close();
		}
		return employee1;
	}


	@Override
	public boolean deleteEmployeeById(String Id) {
		Session ses=sf.openSession();
		Transaction tx=ses.beginTransaction();
		boolean b=false;
		try {
			employee emp=ses.get(employee.class, Id);
			if(emp!=null) 
			{
		      ses.delete(emp);
		      tx.commit();
		      b=true;
			}
			else 
			{
				b=false;
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally {
			ses.close();
		}
		return b;
	}

	@Override
	public employee loginProcess(employee emp) {
		Session ses= sf.openSession();
		Transaction tx=ses.beginTransaction();
		Query query= ses.createQuery("from employee where userName=:username and password=:password");
		query.setParameter("username", emp.getUserName());
		query.setParameter("password", emp.getPassword());
		List<employee> list=query.list();
		
		if(!list.isEmpty())
		{
			emp=list.get(0);
			emp.setStatus("active");
			ses.update(emp);
			tx.commit();
			ses.close();
		//	return list.get(0);
		}
		else
		{
			return emp=null;
		}
		return emp;
		
	}


	
	@Override
	public void logout(String employeeId) 
	{
	employee emp=getEmployeebyId(employeeId);
	emp.setStatus("inactive");
	update(emp);
		
	}
	

}
