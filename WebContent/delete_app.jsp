<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String id=request.getParameter("id");
	user user=new user();
	user.setId(Integer.parseInt(id));
	UserController uc=new UserController();
	uc.delete_app(user);
	response.sendRedirect("view_app.jsp?msg=successfully deleted");
	
	
%>