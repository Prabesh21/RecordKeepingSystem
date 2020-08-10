<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String id=request.getParameter("id");
	user user=new user();
	user.setId(Integer.parseInt(id));
	UserController uc=new UserController();
	uc.deletepat(user);
	response.sendRedirect("view_patient.jsp?msg=successfully deleted");
	
	
%>