<%@ page import="java.util.*" %>
<%
	String name=(String)session.getAttribute("NAME");
if(null==name){
	response.sendRedirect("login.jsp?message=enter username and password");
}
%>
<form method="post" action="admin_db.jsp">
UserName:<input type="text" name="name"><br>
Password:<input type="password" name="password">
<input type="submit" value="Add User">
</form>