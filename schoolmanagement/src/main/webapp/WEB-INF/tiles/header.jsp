
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

            	<!--------------------------------Administration------------------------------------>

            	  <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> Administration <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<li class="dropdown-header">Entry Forms</li>
	                 <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li>
	                 <li><a href="${pageContext.request.contextPath}/shift">Shift</a></li>
	                  <li><a href="${pageContext.request.contextPath}/class">Class</a></li>
	                   <li><a href="${pageContext.request.contextPath}/subject">Subject</a></li>
	                    <li><a href="${pageContext.request.contextPath}/section">Section</a></li>
	                     <li><a href="${pageContext.request.contextPath}/studentGroup">Student Group</a></li>
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

            	<!--------------------------------Attendence------------------------------------>

            	  <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> Attendence <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<li class="dropdown-header">Entry Forms</li>
	              <!--    <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li> -->
	                 <li><a href="${pageContext.request.contextPath}/Student Attendence">Student Attendence</a></li>
	                  <li><a href="${pageContext.request.contextPath}/Employee Attendence">Employee Attendence</a></li>
	                   <li><a href="${pageContext.request.contextPath}/">Holiday</a></li>
	                       
	             	 <sec:authorize access="hasAnyRole('ADMIN','CPUSER')">
						<li><a href="#">Admin Menu Item</a></li>
					</sec:authorize>
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Reports</li>
	                <li><a href="#">Student Daily Attendence Report</a></li>
	                <li><a href="#">Employee Daily Attendence Report</a></li>	                
	              </ul>
	            </li>
            	<!------------------------------------------------------------>

            	<!--------------------------------PIMS------------------------------------>

            	  <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> PIMS <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<li class="dropdown-header">Entry Forms</li>
	              <!--    <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li> -->
	                 <li><a href="#">Student Admission</a></li>
	                  <li><a href="#">Student Promotion</a></li>
	                   <li><a href="#">Employee Registration</a></li>
	                   <li><a href="#">Student List</a></li>
	                   <li><a href="#">Employee List</a></li>
	                       
	             	 <sec:authorize access="hasAnyRole('ADMIN','CPUSER')">
						<li><a href="#">Admin Menu Item</a></li>
					</sec:authorize>
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Reports</li>
	                <li><a href="#">Student Detail Report</a></li>
	                <li><a href="#">Student List Report </a></li>	 
	                <li><a href="#">Employee Details Report</a></li>
	                <li><a href="#">Employee List Report</a></li>
	                       
	              </ul>
	            </li>
            	<!------------------------------------------------------------>

            	<!--------------------------------Result------------------------------------>

            	  <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> Result <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<li class="dropdown-header">Entry Forms</li>
	              <!--    <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li> -->
	                 <li><a href="#">Marks Entry</a></li>
	                  <li><a href="#">Student Marks Policy</a></li>
	                   <li><a href="#">Student Wise Marks Entry</a></li>
	                   <li><a href="#">Result Varification</a></li>
	                <!--        
	             	 <sec:authorize access="hasAnyRole('ADMIN','CPUSER')">
						<li><a href="#">Admin Menu Item</a></li>
					</sec:authorize>
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Reports</li>
	                <li><a href="#">Student Detail Report</a></li>
	                <li><a href="#">Student List Report </a></li>	 
	                <li><a href="#">Employee Details Report</a></li>
	                <li><a href="#">Employee List Report</a></li> -->
	                       
	              </ul>
	            </li>
            	<!------------------------------------------------------------>

            	<!--------------------------------Routine------------------------------------>

            	  <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> Routine <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<li class="dropdown-header">Routine Entry Forms</li>
	              <!--    <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li> -->
	              
	                  <li><a href="#">Routine Slot</a></li>
	                     <li><a href="#">Routine</a></li>
	                   
	                       
	             	 <!-- <sec:authorize access="hasAnyRole('ADMIN','CPUSER')">
						<li><a href="#">Admin Menu Item</a></li>
					</sec:authorize> -->
	                <li role="separator" class="divider"></li>
	                <!-- <li class="dropdown-header">Reports</li> -->
	                <li><a href="#">Student Class Routine</a></li>
	                <li><a href="#">Teacher's Schedule</a></li>	 
	               <!--  <li><a href="#">Employee Details Report</a></li>
	                <li><a href="#">Employee List Report</a></li> --> 
	                       
	              </ul>
	            </li>
            	<!------------------------------------------------------------>

            	<!--------------------------------Library------------------------------------>

            	  <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> Library <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<li class="dropdown-header">Library Entry Forms</li>
	              <!--    <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li> -->
	              
	                  <li><a href="#">Class Entry</a></li>
	                     <li><a href="#">Book Catagory</a></li>
	                       <li><a href="#">Book Author</a></li>
	                     <li><a href="#">Book Publisher</a></li>
	                       <li><a href="#">Supplier</a></li>
	                     <li><a href="#">Book Purchase</a></li>
	                        <li><a href="#">Book Shelves</a></li>
	                     <li><a href="#">Book Issue</a></li>
	                       <li><a href="#">Book Return</a></li>
	                   
	                   
	                       
	             	<!--   <sec:authorize access="hasAnyRole('ADMIN','CPUSER')">
						<li><a href="#">Admin Menu Item</a></li>
					</sec:authorize> 
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Reports</li> -->
	                <!-- <li><a href="#">Student Class Routine</a></li>
	                <li><a href="#">Teacher's Schedule</a></li>	 
	                <li><a href="#">Employee Details Report</a></li>
	                <li><a href="#">Employee List Report</a></li> -->
	                       
	              </ul>
	            </li>
            	<!------------------------------------------------------------>

            	<!--------------------------------Residence------------------------------------>

            	  <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> Residence <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<li class="dropdown-header">Residence Entry Forms</li>
	              <!--    <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li> -->
	              
	                  <li><a href="#">Hall Entry</a></li>
	                     <li><a href="#">Seat Entry</a></li>
	                       <li><a href="#">Allocation</a></li>
	                     <li><a href="#">Deallocation</a></li>
	                     
	                   
	                   
	                       
	             	<!--   <sec:authorize access="hasAnyRole('ADMIN','CPUSER')">
						<li><a href="#">Admin Menu Item</a></li>
					</sec:authorize> 
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Reports</li> -->
	                <!-- <li><a href="#">Student Class Routine</a></li>
	                <li><a href="#">Teacher's Schedule</a></li>	 
	                <li><a href="#">Employee Details Report</a></li>
	                <li><a href="#">Employee List Report</a></li> -->
	                       
	              </ul>
	            </li>
            	<!------------------------------------------------------------>

            	<!--------------------------------Accounts------------------------------------>

            	  <li class="dropdown">
	               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> Upcoming <span class="caret"></span></a>
	               <ul class="dropdown-menu">
	                	<!-- <li class="dropdown-header">Entry Forms</li> -->
	              <!--    <li><a href="${pageContext.request.contextPath}/userregistration">Create User</a></li> -->
	                 <li><a href="#">Bank Deposit</a></li>
	                  <li><a href="#">Bank Withdraw</a></li>
	                  <li role="separator" class="divider"></li>
	                   <li><a href="#">Expense</a></li>
	                   <li><a href="#">Income</a></li>
	                   <li role="separator" class="divider"></li>
	                   <li><a href="#">Fees Collection Settings</a></li>
	                    <li><a href="#">Student Fees Collection</a></li>
	                     <li role="separator" class="divider"></li>
	                     <li><a href="#">All Income By Date</a></li>
	                    <li><a href="#">Income By Month</a></li>
	                    <li><a href="#">Monthly Income By Year</a></li>
	                    <li><a href="#">All Expense By Date</a></li>
	                    <li><a href="#">Expense By Month</a></li>
	                    <li><a href="#">Monthly Expense By Year</a></li>
	                    <li><a href="#">Student Wise Monthly Collection</a></li>
	                    <li><a href="#">Balance Sheet By Year</a></li>
	                       
	                       
	             	<!--  <sec:authorize access="hasAnyRole('ADMIN','CPUSER')">
						<li><a href="#">Admin Menu Item</a></li>
					</sec:authorize>
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Reports</li>
	                <li><a href="#">Student Detail Report</a></li>
	                <li><a href="#">Student List Report </a></li>	 
	                <li><a href="#">Employee Details Report</a></li>
	                <li><a href="#">Employee List Report</a></li> -->
	                       
	              </ul>
	            </li>
            	<!------------------------------------------------------------>
            


	       <!--      <li class="dropdown">
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
	            </li> -->


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
