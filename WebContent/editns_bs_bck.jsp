<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%@ include file="forsession.jsp" %>
<%
	String id=request.getParameter("id");
	UserController uc=new UserController();
	user u=new user();
	u.setId(Integer.parseInt(id));
	u=uc.getns_bs(u);
%>
<form method="post" action="editns_bsdb.jsp">
Id:<input type="hidden" name="id" value="<%=u.getId()%>"><br>
Name:<input type="text" name="name" value=<%=u.getUsername() %>><br>
NMC no:<input type="text" name="nmc" value=<%=u.getNmc() %>><br>
Degree:<input type="text" name="degree" value=<%=u.getDegree() %>><br>
Shift:<input type="text" name="shift" value=<%=u.getShift() %>><br>
Phone no:<input type="number" name="phone" value=<%=u.getPhone() %>><br>
<input type="submit" value="Edit">
</form>