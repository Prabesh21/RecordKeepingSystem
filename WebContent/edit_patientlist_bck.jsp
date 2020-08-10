<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%@ include file="forsession.jsp" %>
<%
	String id=request.getParameter("id");
	UserController uc=new UserController();
	user u=new user();
	u.setId(Integer.parseInt(id));
	u=uc.get_patient(u);
%>
<form method="post" action="edit_patientlistdb.jsp">
Id:<input type="hidden" name="id" value="<%=u.getId()%>"><br>
Name:<input type="text" name="name" value=<%=u.getName() %>><br>
Address:<input type="text" name="address" value=<%=u.getAddress() %>><br>
Arrival Date:<input type="Date" name="arrival" value=<%=u.getArrival() %>><br>
Discharge Date:<input type="Date" name="discharge" value=<%=u.getDischarge() %>><br>
Phone no:<input type="number" name="phone" value=<%=u.getPhone() %>><br>
Health Report:<input type="text" name="hr" value=<%=u.getHr() %>><br>
Departments Visited:<input type="text" name="dvisited" value=<%=u.getDvisited() %>><br>
Doctor's Appointed:<input type="text" name="drappointed" value=<%=u.getDrappointed() %>><br>
Ward No:<input type="number" name="ward" value=<%=u.getWard() %>><br>
Bed No:<input type="number" name="bed" value=<%=u.getBed() %>><br>
<input type="submit" value="Edit">
</form>
