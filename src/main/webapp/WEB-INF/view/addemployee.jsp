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
        <h2 style="margin-left: 400px; margin-top: 40px;">Add Employee</h2>
        <form class="form"  action="saveEmployee" method="post">
          <div class="inputBox" >
            <input type="text" required name="userName">
            <i>Username*</i>
          
          </div>
         
          <div class="inputBox">
            <input type="password" required name="password">
            <i>Password*</i>
           
          </div>
          <div class="inputBox">
           
            <select class="form-control" name="department" >
              <option class="hidden"  selected disabled>Please select user Department </option>
              <option value="IT">IT</option>
              <option value="Finance">Finance</option>
              <option value="HR">HR</option>
          </select>
            
          </div>
          <div class="form-group" >
            <div class="maxl" >
                <label class="radio_inline" > 
                    <input type="radio" name="gender" value="male" checked >
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
              <select class="form-control" name="role" >
                  <option class="hidden"  selected disabled>Please select your role </option>
                  <option value="admin">admin</option>
                  <option value="employee">employee</option>
              </select>
          </div>
          </div>
          <div class="inputRight">
          <div class="inputBox">
            <input type="text" required name="email">
            <i>email*</i>
          </div>
          <div class="inputBox" >
            <input type="text" required name="phone">
            <i>phone*</i>
          </div>
          <div class="inputBox">
            <input type="text" required name="salary">
            <i>salary*</i>
          </div>
          <div class="inputBox">
            <select class="form-control" name="SecurityQuestion" >
              <option class="hidden"  selected disabled>Security Question </option>
              <option value="What is your Birthdate">What is your Birthdate</option>
              <option value="What is your Nickname">What is your Nickname</option>
              <option value="What is your older phone number">What is your older phone number</option>
              

          </select>
          </div>
          <div class="inputBox" >
            <input type="text" required name="answer">
            <i>answer*</i>
          </div>
        </div>
               
          <div class="inputBox" style="margin-left: 250px;">
            <input type="submit" value="Register">
          </div>
         
        </form>
      </div>
    </div>

  </section>  
 
</body>
</html>
<%@ include file="footer.jsp" %>
