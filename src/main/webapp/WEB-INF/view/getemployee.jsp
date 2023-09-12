<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %> 
<!DOCTYPE html>

<html>

<head>

	<title>Table</title>

	<link rel="stylesheet" type="text/css" href="/resources/table.css">
	<link rel="stylesheet" type="text/css" href="/resources/deletebtn.css">
	<style>
		.head-section{
			height: 70px;
		}
		
	</style>

</head>

<body>
<table>
<thead>
	<tr>

		<th>EMPLOYEE ID</th>

		<th>USER NAME</th>
		<%
		String role1=(String)session.getAttribute("role");
		if(role1.equalsIgnoreCase("admin"))
		{
		 %>

		<th>PASSWORD</th>

		<%
	}
     	%>

		<th>GENDER</th>

		<th>DEPARTMENT</th>

		<th>STATUS</th>

		<th>ROLE</th>
		<%
		if(role1.equalsIgnoreCase("admin"))
		{
		 %>
		<th>SALARY</th>
		<%
		}
			%>

		<th>CREATED DATE</th>
         <%
		if(role1.equalsIgnoreCase("admin"))
		{
		 %>

		<th>EMAIL</th>

		<%
	}
     	%>
<%
		if(role1.equalsIgnoreCase("admin"))
		{
		 %>
		<th>PHONE</th>

		<%
	}
     	%>
<%
		 if(role1.equalsIgnoreCase("admin"))
		 {
		  %>
		<th>SECURITY QUESTION </th>

		<%
	}
     	%>

       <%
		 if(role1.equalsIgnoreCase("admin"))
		 {
		  %>
		<th>ANSWER</th>

		<%
	}
     	%>
       <%
		 if(role1.equalsIgnoreCase("admin"))
		 {
		  %>
		<th>ACTION</th>

		<th></th>
		<%
	}
     	%>

	</tr>
</thead>
<tbody>
	<tr>
		<c:forEach items="${list}" var="employee">

		<td><c:out value="${employee.employeeId}"></c:out></td>

		<td><c:out value="${employee.userName}"></c:out></td>
    <%
		if(role1.equalsIgnoreCase("admin"))
		{
		 %>

		<td><c:out value="${employee.password}"></c:out></td>

		<%
	}
     	%>

		<td><c:out value="${employee.gender}"></c:out></td>

		<td><c:out value="${employee.department}"></c:out></td>

		
		<td>
			<c:choose>
				<c:when test="${employee.status == 'active'}">
					<span >
						<img src="/resources/circleGreen.png" alt="Active" style="border-radius: 100%; box-shadow: 0px 0px 10px green; cursor: pointer;"><br />
						<c:out value="${employee.status} "></c:out>
					</span>
				</c:when>
				<c:when test="${employee.status == 'inactive'}">
					<span>
						<img src="/resources/circleRed.png" alt="Inactive" style="border-radius: 100%; box-shadow: 0px 0px 10px red; cursor: pointer;"><br />
						<c:out value="${employee.status} "></c:out>
					</span>
				</c:when>
			</c:choose>
		</td>
		
		
		<td> <c:if test="${employee.role == 'admin'}">
			<img src="/resources/solidCrown.png" alt="Admin" />
			<br />
			${employee.role}
			
		</c:if>
		<c:if test="${employee.role == 'employee'}">
			<br />
			${employee.role}
			<br />
		</c:if>

	   </td>

		<%
		if(role1.equalsIgnoreCase("admin"))
		{
		 %>
		<td><c:out value="${employee.salary}"></c:out></td>
		<%
    	}
     	%>
		 <td>
			

			<c:out value="${employee.dateCreated}"></c:out></td>
			
         
    <%
		if(role1.equalsIgnoreCase("admin"))
		{
		 %>

		<td><c:out value="${employee.email}"></c:out></td>

		<%
	}
     	%>

       <%
		 if(role1.equalsIgnoreCase("admin"))
		 {
		  %>
		<td>
			
			<c:out value="${employee.phone}"></c:out></td>

		<%
	}
     	%>

       <%
		 if(role1.equalsIgnoreCase("admin"))
		 {
		  %>
		<td><c:out value="${employee.securityQuestion}"></c:out></td>
		<%
	}
     	%>
       <%
		 if(role1.equalsIgnoreCase("admin"))
		 {
		  %>

		<td><c:out value="${employee.answer}"></c:out></td>

		<%
	}
     	%>

		<%
		if(role1.equalsIgnoreCase("admin"))
		{
		 %>
		 <td><a href="getemployeebyId?eid=${employee.employeeId}&msg=null"><button class="editButton">Edit</button> </a>
			</td>
			<td>
				<a href="deleteEmployeeById?eid=${employee.employeeId}&msg" onclick="return confirm('Are you sure you want to delete this item?');">  <button id="delete" class="del-btn" type="button" aria-label="Delete">
					<svg class="del-btn__icon" viewBox="0 0 48 48" width="48px" height="48px" aria-hidden="true">
						<clipPath id="can-clip">
							<rect class="del-btn__icon-can-fill" x="5" y="24" width="14" height="11" />
						</clipPath>
						<g fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" transform="translate(12,12)">
							<g class="del-btn__icon-lid">
								<polyline points="9,5 9,1 15,1 15,5" />
								<polyline points="4,5 20,5" />
							</g>
							<g class="del-btn__icon-can">
								<g stroke-width="0">
									<polyline id="can-fill" points="6,10 7,23 17,23 18,10" />
									<use clip-path="url(#can-clip)" href="#can-fill" fill="#fff" />
								</g>
								<polyline points="6,10 7,23 17,23 18,10" />
							</g>
						</g>
					</svg>
					<span class="del-btn__letters" aria-hidden="true" data-anim>
						<span class="del-btn__letter-box">
							<span class="del-btn__letter">D</span>
						</span>
						<span class="del-btn__letter-box">
							<span class="del-btn__letter">e</span>
						</span>
						<span class="del-btn__letter-box">
							<span class="del-btn__letter">l</span>
						</span>
						<span class="del-btn__letter-box">
							<span class="del-btn__letter">e</span>
						</span>
						<span class="del-btn__letter-box">
							<span class="del-btn__letter">t</span>
						</span>
						<span class="del-btn__letter-box">
							<span class="del-btn__letter">e</span>
						</span>
					</span>
				</button>
			</a>
		 <%
		}
		%>

	</tr>


</c:forEach>


</table>

<script src="/resources/deletebtn.js"></script>

</body>
</html>
