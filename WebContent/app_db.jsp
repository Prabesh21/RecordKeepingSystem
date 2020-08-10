<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String address=request.getParameter("address");
	String symtom=request.getParameter("symtom");
	String shift=request.getParameter("shift");
	String department=request.getParameter("department");
	String arrival=request.getParameter("arrival");
	String phone=request.getParameter("phone");
	user user=new user();
	user.setId(Integer.parseInt(id));
	user.setUsername(name);
	user.setAddress(address);
	user.setSymtom(symtom);
	user.setDepartment(department);
	user.setArrival(arrival);
	user.setPhone(Long.parseLong(phone));
	user.setShift(shift);
	UserController uc=new UserController();
	uc.addAppointment(user);
	response.sendRedirect("view_app.jsp");
	
	
%>