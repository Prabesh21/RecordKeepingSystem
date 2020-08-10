<%@ page import="java.util.*" %>
<%
	String name=(String)session.getAttribute("NAME");
if(null==name){
	response.sendRedirect("login.jsp?message=enter username and password");
}
%>
<h1>Nurses</h1>
Today is <%= new Date() %>
<br>

<a href="addns_an.jsp" > Add New Nurse</a><br>
<a href="viewns_anes.jsp">View Available Nurses</a><br>
<a href="logout.jsp">Log out</a>
