<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>

<html>

<head>
	<title>EMS - Employee Form</title>
	
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
            
            <div class="col-9 mx-auto">

                <div class="mt-4">
                    <div class="text-center p-1">
                        <h3 class="theme-color">EMS - Employee Details</h3>
                    </div>
                    <br>
                </div>
                
                
                <form:form action="saveEmployee" modelAttribute="employee" method="POST">
                
                	<form:hidden path="id" />
                
                	<div class="form-group mx-4 mt-4">
                    	<form:input path="firstName"  class="form-control" placeholder="Enter First Name" required="required"/>
                    </div> 
                    
                    <div class="form-group mx-4 mt-4">
                    	<form:input path="lastName"  class="form-control" placeholder="Enter Last Name" required="required"/>
                    </div> 
                    
                    <div class="form-group mx-4 mt-4">
                    	<form:input path="email" type="email"  class="form-control" placeholder="Enter Email" required="required"/>
                    </div> 
                    
                    <div class="form-group mx-4 mt-4">
                         <button type="submit" class="btn login-btn btn-block ">Save Employee</button>
                    </div>
                
                
                </form:form>
                
                
		    	
            </div>
        </div>
    </div>
	
	<br>

</body>

</html>

