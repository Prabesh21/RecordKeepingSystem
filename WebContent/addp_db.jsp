<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String address=request.getParameter("address");
	String arrival=request.getParameter("arrival");
	String discharge=request.getParameter("discharge");
	String phone=request.getParameter("phone");
	String hr=request.getParameter("hr");
	String dvisited=request.getParameter("dvisited");
	String drappointed=request.getParameter("drappointed");
	String ward=request.getParameter("ward");
	String bed=request.getParameter("bed");
	user user=new user();
	user.setId(Integer.parseInt(id));
	user.setName(name);
	user.setArrival(arrival);
	user.setAddress(address);
	user.setPhone(Long.parseLong(phone));
	user.setHr(hr);
	user.setDischarge(discharge);
	user.setDvisited(dvisited);
	user.setWard(Integer.parseInt(ward));
	user.setDrappointed(drappointed);
	user.setBed(Integer.parseInt(bed));
	UserController uc=new UserController();
	uc.addPatient(user);
	response.sendRedirect("view_patient.jsp");
	
	
%>