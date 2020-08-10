
<%@ page import="java.util.*" %>
<%
	String name=(String)session.getAttribute("NAME");
if(null==name){
	response.sendRedirect("login.jsp?message=enter username and password");
}
%><html>
<head><title>Main Menu</title></head>
</html>
<h1>Welcome to Cosmos Hospital Pvt Ltd</h1>
Today is <%= new Date() %>
<br><h2>Available Departments</h2>
<a href="a.jsp" >Anesthetics</a><br>
<a href="b.jsp">Breast Screening</a><br>
<a href="patient.jsp">Patient</a><br>
<a href="adduser.jsp" >Cardiology</a><br>
<a href="viewuser.jsp">Central Sterile Services Department (CSSD)</a><br>
<a href="viewuser.jsp">Chaplaincy</a><br>
<a href="adduser.jsp" >Coronary Care Unit (CCU)</a><br>
<a href="viewuser.jsp">Critical Care</a><br>
<a href="viewuser.jsp">Diagnostic Imaging</a><br>
<a href="adduser.jsp" >Discharge Lounge</a><br>
<a href="viewuser.jsp">Elderly services</a><br>
<a href="viewuser.jsp">Finance Department</a><br>
<a href="viewuser.jsp">Gastroenterology</a><br>
<a href="adduser.jsp" >General Services</a><br>
<a href="viewuser.jsp">General Surgery</a><br>
<a href="viewuser.jsp">Gynecology</a><br>
<a href="add_admin.jsp">Add new user</a>
<a href="logout.jsp">Log out</a>
