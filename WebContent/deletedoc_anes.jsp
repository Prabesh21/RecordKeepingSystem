<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String id=request.getParameter("id");
	user user=new user();
	user.setId(Integer.parseInt(id));
	UserController uc=new UserController();
	uc.deleteDoc_anes(user);
	response.sendRedirect("viewdoc_anes.jsp?msg=successfully deleted");
	
	
%>