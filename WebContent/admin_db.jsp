<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	user user=new user();
	user.setUsername(name);
	user.setPassword(password);
	UserController uc=new UserController();
	uc.createUser(user);
	session.invalidate();
	response.sendRedirect("login.jsp");
	
	
%>