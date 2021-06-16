    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<h1>Employees List</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr><th>Id</th><th>First Name</th><th>Last Name</th><th>Salary</th><th>Department</th><th>Position</th><th>Email Address</th><th>Contact Number</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="emp" items="${list}"> 
    <tr>
    <td>${emp.id}</td>
    <td>${emp.first_name}</td>
    <td>${emp.last_name}</td>
    <td>${emp.salary}</td>
    <td>${emp.department}</td>
    <td>${emp.position}</td>
    <td>${emp.email_address}</td>
    <td>${emp.contact_number}</td>
   <%--  <td>${emp.picture}</td> --%>
    <td><a href="editemp/${emp.id}">Edit</a></td>
    <td><a href="deleteemp/${emp.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
   <!--  <a href="empform">Add New Employee </a> -->
     
        
   <a href="/SpringMVCCRUDSimple/viewemp/1">1</a>     
   <a href="/SpringMVCCRUDSimple/viewemp/2">2</a>     
   <a href="/SpringMVCCRUDSimple/viewemp/3">3</a>  
   
    