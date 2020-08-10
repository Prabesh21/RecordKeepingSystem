<%@ page import="com.demo.dto.*,com.demo.controller.*" %>
<%
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	
	//remember me code
	String remember=request.getParameter("remember");
	if (null != remember){
		Cookie cook=new Cookie("REMEMBER",name);
		response.addCookie(cook);
	}
	else{
		Cookie cook=new Cookie("REMEMBER","NO");
		response.addCookie(cook);
	}
	UserController uc=new UserController();
	user u=new user();
	u.setUsername(name);
	u.setPassword(password);
	//password check and session start
	if(uc.validateUser(u))
		{
		session.setAttribute("NAME", name);
		response.sendRedirect("home.jsp");}
		else
		{
			response.sendRedirect("login.jsp?message=Invalid user");
		}
%>