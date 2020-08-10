<%@ page import="com.demo.dto.*,com.demo.controller.*,java.util.*" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String age=request.getParameter("age");
	String address=request.getParameter("address");
	String arrival=request.getParameter("arrival");
	String phone=request.getParameter("phone");
	String[] service=request.getParameterValues("service");
	String serv = "";
	
	int amount = 0;
	if (service!=null){
		
		for(int i=0;i<service.length;++i){
			if(service[i].equals("ticket")){
				amount = amount + 100;
				serv+="ticket, ";
			}
			if(service[i].equals("blood")){
				amount = amount + 100;
				serv+="ticket,";
			}
			if(service[i].equals("urine")){
				amount = amount + 100;
				serv+="ticket";
			}
			if(service[i].equals("xray")){
				amount = amount + 100;
				serv+="ticket";
			}
			if(service[i].equals("mri")){
				amount = amount + 100;
				serv+="ticket";
			}
		}
	}
	user user=new user();
	user.setId(Integer.parseInt(id));
	user.setName(name);
	user.setAge(Integer.parseInt(age));
	user.setAddress(address);
	user.setArrival(arrival);
	user.setPhone(Long.parseLong(phone));
	user.setAmount(amount);
	user.setService(serv);
	UserController uc=new UserController();
	uc.addBill(user);
	response.sendRedirect("viewdoc_anes.jsp");
	
	
%>