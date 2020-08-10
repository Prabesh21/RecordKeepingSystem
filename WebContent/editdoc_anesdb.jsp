<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String nmc=request.getParameter("nmc");
	String degree=request.getParameter("degree");
	String phone=request.getParameter("phone");
	String shift=request.getParameter("shift");
	user user=new user();
	user.setId(Integer.parseInt(id));
	user.setUsername(name);
	user.setNmc(Integer.parseInt(nmc));
	user.setDegree(degree);
	user.setPhone(Long.parseLong(phone));
	user.setShift(shift);
	
	UserController uc=new UserController();
	uc.updatedoc_anes(user);
	response.sendRedirect("viewdoc_anes.jsp?msg=successfully updated");
	
	
%>