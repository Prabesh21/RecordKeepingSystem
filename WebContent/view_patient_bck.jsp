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
<h2>Patient's Details</h2>
<table border="1">
	<tr> <th>Id:</th>
		<th>Name:</th>
		<th>Address:</th>
		<th>Arrival Date:</th>
		<th>Discharge Date:</th>
		<th>Phone no:</th>
		<th>Health Report:</th>
		<th>Departments Visited:</th>
		<th>Doctor's Appointed:</th>
		<th>Ward no:</th>
		<th>Bed no:</th>
		</tr>
		<%
		for(user u:users){
			
		
		%> 
		<tr>
		<td><%=u.getId() %></td>
		<td><%=u.getName() %></td>
		<td><%=u.getAddress() %></td>
		<td><%=u.getArrival() %></td>
		<td><%=u.getDischarge() %></td>
		<td><%=u.getPhone() %></td>
		<td><%=u.getHr() %></td>
		<td><%=u.getDvisited() %></td>
		<td><%=u.getDrappointed() %></td>
		<td><%=u.getWard() %></td>
		<td><%=u.getBed() %></td>
		
		<td><a href="edit_patientlist.jsp?id=<%=u.getId()%>">Edit</a>
		<a href="#" onclick="confirmDel('<%=u.getId() %>')">Delete</a></td>	</tr>
		<% } %>

</table>