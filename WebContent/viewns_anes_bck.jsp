<%@ include file="forsession.jsp" %>
<%@ page import="com.demo.dto.*,com.demo.controller.*,java.util.*" %>
<script>
	function confirmDel(id){
		if(confirm('Are you sure?')){
			location.href="deletens_anes.jsp?id="+id;
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
List<user> users=uc.getns_anes();
%>
<h2>Nurse's List</h2>
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
		<td><a href="editns_anes.jsp?id=<%=u.getId()%>">Edit</a>
		<a href="#" onclick="confirmDel('<%=u.getId() %>')">Delete</a></td>	</tr>
		<% } %>

</table>