
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
     <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="/img/school.png" style="margin-top: -6px;"  height="32" width="32"></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">

          	<sec:authorize access="isAuthenticated()">
            	<li class="active"><a href="${pageContext.request.contextPath}/home">Home</a></li>
            
            	<!-- <li><a href="#">Resources</a></li> -->

            	<!-------------------------------------------------------------------->

            	  <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> Administration <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<li class="dropdown-header">Entry Forms</li>
	                 <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li>
	                 <li><a href="${pageContext.request.contextPath}/shift">Shift</a></li>
	                  <li><a href="${pageContext.request.contextPath}/class">Class</a></li>
	                   <li><a href="${pageContext.request.contextPath}/subject">Subject</a></li>
	                    <li><a href="${pageContext.request.contextPath}/brands">Section</a></li>
	                     <li><a href="${pageContext.request.contextPath}/brands">Student Group</a></li>
	                      <li><a href="${pageContext.request.contextPath}/brands">Group Subjects</a></li>
	                        <li><a href="${pageContext.request.contextPath}/brands">Designation</a></li>
	                       
	             	 <sec:authorize access="hasAnyRole('ADMIN','CPUSER')">
						<li><a href="#">Admin Menu Item</a></li>
					</sec:authorize>
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Reports</li>
	                <li><a href="#">Report 1</a></li>
	                <li><a href="#">Report 2</a></li>	                
	              </ul>
	            </li>
            	<!------------------------------------------------------------>
            


	            <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Functional <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<li class="dropdown-header">Entry Forms</li>
	                 <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li>
	                 <li><a href="${pageContext.request.contextPath}/brands">Create Brands</a></li>
	                 <li><a href="#">Menu Item 1</a></li>
	             	 <li><a href="#">Menu Item 2</a></li>	       
	             	 <sec:authorize access="hasAnyRole('ADMIN','CPUSER')">
						<li><a href="#">Admin Menu Item</a></li>
					</sec:authorize>
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Reports</li>
	                <li><a href="#">Report 1</a></li>
	                <li><a href="#">Report 2</a></li>	                
	              </ul>
	            </li>
            </sec:authorize>
            <sec:authorize access="!isAuthenticated()">
					<li>
						<a href="<c:url value='/login' />">Log in</a>
					</li>
				</sec:authorize> 
				<sec:authorize access="isAuthenticated()">
					<li>
						<a href="<c:url value='/logout' />">  <span class="glyphicon glyphicon-log-out"></span> Log out</a>
					</li>
				</sec:authorize>
          </ul>
          
          	<ul class="nav navbar-nav navbar-right">
				
				
			</ul>
			
        </div><!--/.nav-collapse -->
      </div>
    </nav>
