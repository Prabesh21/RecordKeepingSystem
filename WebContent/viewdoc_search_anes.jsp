<%@ include file="forsession.jsp" %>
<%@ page import="com.demo.dto.*,com.demo.controller.*,java.util.*" %>
<% 
UserController uc=new UserController();
List<user> users=uc.getdocs_anes();
%>
<h2>Search Results</h2>
<table border="1">
	<tr> <th>Id</th>
		<th>Name</th>
		<th>NMC no</th>
		<th>Degree</th>
		<th>Phone no</th>
		<th>Shift</th>
		<th>Action</th></tr>
		<%
		for(user u:users){
			
		
		%> 
		<tr>
		<td><%=u.getId() %></td>
		<td><%=u.getUsername() %></td>
		<td><%=u.getNmc() %></td>
		<td><%=u.getDegree() %></td>
		<td><%=u.getPhone() %></td>
		<td><%=u.getShift() %></td>
		</tr>
		<% } %>

</table>