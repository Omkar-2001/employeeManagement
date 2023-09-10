package com.employeeService02.demo.entity;


import jakarta.persistence.Entity;
import jakarta.persistence.Id;


@Entity
public class employee
{
	@Id  
	String employeeId;
	String userName;
	String password;
	  long salary;
	String department;
	String status="inactive";
	String role;
	String dateCreated;
	String email;
	String securityQuestion;
	String answer;
	String phone;
	String gender;
	public employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public employee(String employeeId, String userName, String password, long salary, String department, String status,
			String role, String dateCreated, String email, String securityQuestion, String answer, String phone,
			String gender) {
		super();
		this.employeeId = employeeId;
		this.userName = userName;
		this.password = password;
		this.salary = salary;
		this.department = department;
		this.status = status;
		this.role = role;
		this.dateCreated = dateCreated;
		this.email = email;
		this.securityQuestion = securityQuestion;
		this.answer = answer;
		this.phone = phone;
		this.gender = gender;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getSalary() {
		return salary;
	}
	public void setSalary(long salary) {
		this.salary = salary;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(String dateCreated) {
		this.dateCreated = dateCreated;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSecurityQuestion() {
		return securityQuestion;
	}
	public void setSecurityQuestion(String securityQuestion) {
		this.securityQuestion = securityQuestion;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "employee [employeeId=" + employeeId + ", userName=" + userName + ", password=" + password + ", salary="
				+ salary + ", department=" + department + ", status=" + status + ", role=" + role + ", dateCreated="
				+ dateCreated + ", email=" + email + ", securityQuestion=" + securityQuestion + ", answer=" + answer
				+ ", phone=" + phone + ", gender=" + gender + "]";
	}
	
	

}
