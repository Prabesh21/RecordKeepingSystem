<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>

<body>

<%//For session
	String msg=request.getParameter("message");
	if(null!=msg){
	
%>
<font color="red" size="5"><%=msg %></font>
<%
}
%>

<%
 	//FOR Cookie
 	//GET Cookie
	String name="";
	String checked="";
	Cookie cook[]=request.getCookies();
	for(Cookie c:cook)
		{
		if(c.getName().equals("REMEMBER"))
			{
			if(c.getValue().equals("NO")){
				name="";
			}
			else{
				name=c.getValue();
				checked="checked";
				}
			}
		}

%>
<form method="post" action="login_check.jsp">
UserName:<input type="text" name="name" value="<%=name%>"><br>
Password:<input type="password" name="password"><br>
<input type="checkbox" value="yes" name="remember" <%=checked%> >Remember me<br>
<input type="submit" value="login">
</form>
</body>

</html>