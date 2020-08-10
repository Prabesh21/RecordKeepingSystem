<%@ page import="java.util.*" %>
<%
	String name=(String)session.getAttribute("NAME");
if(null==name){
	response.sendRedirect("login.jsp?message=enter username and password");
}
%>
<h1>Manage Patients</h1>
Today is <%= new Date() %>
<br>

<a href="addp.jsp" > Add New Patient</a><br>
<a href="view_patient.jsp">View Available Patients</a><br>
<a href="logout.jsp">Log out</a>
