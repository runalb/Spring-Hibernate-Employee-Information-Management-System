<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>

<html>

<head>
	<title>EMS - View All Employee</title>
	
	<!-- reference our style sheet -->
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-4.6.2/css/bootstrap.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
		 
</head>

<body>
	
	 <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
	 	 <a class="navbar-brand my-0 mr-md-auto" href="${pageContext.request.contextPath}">
                <img src="${pageContext.request.contextPath}/resources/img/logo.svg" alt="logo" width="130" height="30" alt="Logo" loading="lazy">
            </a>
            
           
            <a class="nav-item nav-link theme-color" href="${pageContext.request.contextPath}/employee/list"><b>View All Employees</b></a>
      		<a class="nav-item nav-link theme-color" href="${pageContext.request.contextPath}/employee/add"><b>Add Employee</b></a>
     		
	 </div>
	 
	 
	 
	 <div class="container h-100">
        <div class="row align-items-center h-100" >
            
            <div class="col-10 mx-auto">

                <div class="mt-4">
                    <div class="text-center p-1">
                        <h3 class="theme-color">EMS - All Employees </h3>
                    </div>
                    <br>
                </div>
                
                
                <table class='table table-striped text-center'>
	            	<thead>
		                <tr>
		                    <th scope='col'>First Name</th>
		                    <th scope='col'>Last Name</th>
		                    <th scope='col'>Email</th>
		                    <th scope='col'>Action</th>
		                </tr>
            		</thead>
            		
            		
            
		            <tbody>
		               <c:forEach var="tempEmployee" items="${employee}">
		                    <tr>
		                        <td scope='row'>${tempEmployee.firstName}</th>
		                        <td scope='row'>${tempEmployee.lastName}</td>
		                        <td scope='row'>${tempEmployee.email}</td>
		                        
		                        <td scope='row'>
			                        <c:url var="updateLink" value="/employee/update">
										<c:param name="employeeId" value="${tempEmployee.id}" />
									</c:url>
									
									<!-- display the update link -->
									<a href="${updateLink}">Update</a>
									
									| 
									
									<!-- construct an "delete" link with customer id -->
									<c:url var="deleteLink" value="/employee/delete">
										<c:param name="employeeId" value="${tempEmployee.id}" />
									</c:url>	
									
									<!-- display the Delete link -->
									<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">Delete</a>
								
		                        </td>
		                    </tr>
		                </c:forEach>
		            </tbody>
		        </table>
		    
		    	<button class='btn action-btn btn-block' onclick="window.location.href='add'">Add Employee</button>          
				
            </div>
        </div>
    </div>
	
	<br>

</body>

</html>

