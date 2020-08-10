<%@ page import="java.util.*" %>
<%
	String name=(String)session.getAttribute("NAME");
if(null==name){
	response.sendRedirect("login.jsp?message=enter username and password");
}
%>
<h1>welcome to Anesthetics</h1>
 Doctors in this department give anesthetic for operations and procedures. An anesthetic is a drug or agent that produces a complete or partial loss of feeling.<br>
Today is <%= new Date() %>
<br>
<h2>Available facilities</h2>
<a href="a1.jsp" >Doctors</a><br>
<a href="a2.jsp">Nurses</a><br>
<a href="logout.jsp">Log out</a>