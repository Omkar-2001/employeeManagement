package com.employeeService02.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.employeeService02.demo.entity.employee;
@Repository
public interface employeeRepository extends JpaRepository<employee, Long> {
	 List <employee> findByuserName(String userName);
	
	

}
