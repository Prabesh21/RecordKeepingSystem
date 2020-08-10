<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String degree=request.getParameter("degree");
	String nmc=request.getParameter("nmc");
	String shift=request.getParameter("shift");
	String phone=request.getParameter("phone");
	user user=new user();
	user.setId(Integer.parseInt(id));
	user.setUsername(name);
	user.setNmc(Integer.parseInt(nmc));
	user.setDegree(degree);
	user.setPhone(Long.parseLong(phone));
	user.setShift(shift);
	UserController uc=new UserController();
	uc.addDoc2(user);
	response.sendRedirect("viewdoc_bs.jsp");
	
	
%>