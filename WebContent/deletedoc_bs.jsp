<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String id=request.getParameter("id");
	user user=new user();
	user.setId(Integer.parseInt(id));
	UserController uc=new UserController();
	uc.deleteDoc_bs(user);
	response.sendRedirect("viewdoc_bs.jsp?msg=successfully deleted");
	
	
%>