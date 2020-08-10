<%@ page import="java.util.*" %>
<%
	String name=(String)session.getAttribute("NAME");
if(null==name){
	response.sendRedirect("login.jsp?message=enter username and password");
}
%>
<h1>Doctors</h1>
Today is <%= new Date() %>
<br>

<a href="a11.jsp" > Add New Doctor</a><br>
<a href="viewdoc_anes.jsp">View Available Doctors</a><br>
<a href="logout.jsp">Log out</a>
