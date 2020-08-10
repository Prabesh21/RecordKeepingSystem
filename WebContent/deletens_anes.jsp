<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String id=request.getParameter("id");
	user user=new user();
	user.setId(Integer.parseInt(id));
	UserController uc=new UserController();
	uc.deleteNs_anes(user);
	response.sendRedirect("viewns_anes.jsp?msg=successfully deleted");
	
	
%>