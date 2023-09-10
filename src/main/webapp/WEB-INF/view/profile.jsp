<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="header.jsp" %>  

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Hackers login page</title>
  <link rel="stylesheet" href="/resources/addemp.css">
  <style>
    .head-section{
      margin-top: -700;
      z-index: 10000;
      width: 100%;
      height: 100px;
      
      border-bottom: 2px solid black;

    }
    .inputRight{
      margin-top: -460px;
    }
  

  </style>

</head>
<body>

<section>

    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    
   
   
  
   
    
    
    <div class="signin">
      <div class="content">
        <h2 style="margin-left: 350px; margin-top: 40px;">Update Information</h2>
        <form class="form"  action="update" method="post">
            <div class="inputBox" >
            <input type="text" required name="employeeId" value="${Employee.employeeId}" readonly>
            <i></i>
          
          </div>
          <div class="inputBox" >
            <input type="text" required name="userName" value="${Employee.userName}">
            <i>Username*</i>
          
          </div>
         
          <div class="inputBox">
            <input type="password" required name="password" value="${Employee.password}">
            <i>Password*</i>
           
          </div>
          <div class="inputBox">
           
            <select class="form-control" name="department">
              <option value="${Employee.department}">${Employee.department}</option>
              <option value="IT">IT</option>
              <option value="Finance">Finance</option>
              <option value="HR">HR</option>
          </select>
            
          </div>
          <div class="form-group" >
            <div class="maxl" >
                <label class="radio_inline" > 
                    <input type="radio" name="gender" value="male" checked required value="${Employee.gender}">
                    <span> Male </span> 
                </label>
                <label class="radio_inline"> 
                    <input type="radio" name="gender" value="female">
                    <span>Female </span> 
                </label>
            </div>
        </div>
          <div class="inputBox">
            <div class="form-group">
              <select class="form-control" name="role"  >
                <option value="${Employee.role}">${Employee.role}</option>
                  <option value="admin">admin</option>
                  <option value="employee">employee</option>
              </select>
          </div>
          </div>
          <div class="inputRight">
          <div class="inputBox">
            <input type="text" required name="email" value="${Employee.email}">
            <i>email*</i>
          </div>
          <div class="inputBox" >
            <input type="text" required name="phone" value="${Employee.phone}">
            <i>phone*</i>
          </div>
          <div class="inputBox">
            <input type="text" required name="salary" value="${Employee.salary}">
            <i>salary*</i>
          </div>
          <div class="inputBox">
            <select class="form-control" name="SecurityQuestion"  >
              <option value="${Employee.securityQuestion}">${Employee.securityQuestion}</option>
              <option value="What is your Birthdate"  >What is your Birthdate</option>
              <option value="What is your Nickname">What is your Nickname</option>
              <option value="What is your older phone number">What is your older phone number</option>
              

          </select>
        
          </div>
          <div class="inputBox" >
            <input type="text" required name="answer" value="${Employee.answer}">
            <i>answer*</i>
          </div>
        </div>
               
          <div class="inputBox" style="margin-left: 250px; margin-top: 50px;">
            <input type="submit" value="update">
          </div>
         ${msg}
        </form>
      </div>
    </div>
  
  </section>  
  
 
</body>

</html>
<%@ include file="footer.jsp" %>
