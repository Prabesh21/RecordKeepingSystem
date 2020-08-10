<%@ include file="forsession.jsp" %>
<%@ page import="com.demo.dto.*,com.demo.controller.*,java.util.*" %>
<script>
	function confirmDel(id){
		if(confirm('Are you sure?')){
			location.href="delete_patient.jsp?id="+id;
		}
	}
</script>
<%
	String msg=request.getParameter("msg");
	if(null!=msg){
		out.println("Message:"+msg);
	}
%>
<% 
UserController uc=new UserController();
List<user> users=uc.get_patient();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Patient</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util2.css">
	<link rel="stylesheet" type="text/css" href="css/main2.css">
<!--===============================================================================================-->
</head>
<body bgcolor=#c4d3f6>
<div class="limiter"><center><h3>Patient Details</h3></center>
		<div class="container-table100">
			<div class="wrap-table100">
					<div class="table">

						<div class="row header">
							<div class="cell1">
								Id
							</div>
							<div class="cell" >
								Name
							</div>
							<div class="cell">
								Address
							</div>
							<div class="cell1">
								Arrival Date
							</div>
							<div class="cell">
								Discharge Date
							</div>
							<div class="cell">
								Phone no
							</div>
							<div class="cell">
								Health Report
							</div>
							<div class="cell">
								Departments Visited
							</div>
							<div class="cell">
								Doctor's Appointed
							</div>
							<div class="cell1">
								Ward no
							</div>
							<div class="cell">
								Bed no
							</div>
							
							<div class="cell">
								Action
							</div>
						</div>
						<%
		for(user u:users){
			
		
		%> 
		
						<div class="row">
							<div class="cell1" data-title="Full Name">
								<%=u.getId() %>
							</div>
							<div class="cell" data-title="Age">
								<%=u.getName() %>
							</div>
							<div class="cell" data-title="Job Title">
								<%=u.getAddress() %>
							</div>
							<div class="cell1" data-title="Location">
								<%=u.getArrival() %>
							</div>
							<div class="cell" data-title="Location">
								<%=u.getDischarge() %>
							</div>
							<div class="cell" data-title="Location">
								<%=u.getPhone() %>
							</div>
							
							<div class="cell" data-title="Location">
								<%=u.getHr() %>
							</div>
							<div class="cell" data-title="Location">
								<%=u.getDvisited() %>
							</div>
							<div class="cell" data-title="Location">
								<%=u.getDrappointed() %>
							</div>
							<div class="cell1" data-title="Location">
								<%=u.getWard() %>
							</div>
							<div class="cell" data-title="Location">
								<%=u.getBed() %>
							</div>
							
							<div class="cell" data-title="Location">
								<a href="edit_patientlist.jsp?id=<%=u.getId()%>">Edit</a>
		<a href="#" onclick="confirmDel('<%=u.getId() %>')">Delete</a>
							</div>
						</div>
						<% } %>
					</div>
			</div>
		</div>
	</div>


	

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main2.js"></script>

</body>
</html>
