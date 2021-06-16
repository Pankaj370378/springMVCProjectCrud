<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<h1>Edit Employee</h1>
       <form:form method="POST" action="/SpringMVCCRUDSimple/editsave">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="id" /></td>
         </tr> 
         <tr>  
          <td>FirstName: </td> 
          <td><form:input path="first_name"  /></td>
         </tr>
         
           <tr>  
          <td>LastName: </td> 
          <td><form:input path="last_name"  /></td>
         </tr>
         
           
         <tr>  
          <td>Salary :</td>  
          <td><form:input path="salary" /></td>
         </tr> 
         
         <tr>  
          <td>Department :</td>  
          <td><form:input path="department" /></td>
         </tr>
         
         <tr>  
          <td>Position :</td>  
          <td><form:input path="position" /></td>
         </tr>
         
         <tr>  
          <td>Email Address :</td>  
          <td><form:input type="email" path="email_address" /></td>
         </tr>
         <tr>  
          <td>Contact Number :</td>  
          <td><form:input type="number" path="contact_number" /></td>
         </tr>
        <%--  <tr>  
          <td>Picture :</td>  
          <td><form:input type="file" path="picture" /></td>
         </tr> 
          --%>
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Edit Save" /></td>  
         </tr>  
        </table>  
       </form:form>  
