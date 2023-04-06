<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>

<html>

<head>
	<title>EMS - Employee Management System</title>
	
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
            <div class="row text-center align-items-center h-100">
                <div class="col-12 mx-auto">
                    <div class="mt-4">
                        <div class="text-center p-2">
                            <h1 class="theme-color">Employee Management System</h1>
                            <h5></h5>
                        </div>
                    </div>
                </div>
                <div class="col-12 mx-auto">
                    <div class="mt-4">
                        <div class="text-center p-2">
                            <h3 class="theme-color">Developer</h3>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12 center team-menbers">
                    <img src="${pageContext.request.contextPath}/resources/img/runal.png" class="rounded-circle" width="120" height="120">
                    <h6 class="m-1">Runal Banarse</h6>
                    <a href="https://runalb.com" class="theme-color">runalb.com</a>
                </div>
            </div>
        </div>
	 
	
	

</body>

</html>

