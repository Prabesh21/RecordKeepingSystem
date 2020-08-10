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
	user.setAddress(address);
	user.setArrival(arrival);
	user.setDischarge(discharge);
	user.setPhone(Long.parseLong(phone));
	user.setHr(hr);
	user.setDvisited(dvisited);
	user.setDrappointed(drappointed);
	user.setWard(Integer.parseInt(ward));
	user.setBed(Integer.parseInt(bed));
	
	UserController uc=new UserController();
	uc.update_patient(user);
	response.sendRedirect("view_patient.jsp?msg=successfully updated");
	
	
%>