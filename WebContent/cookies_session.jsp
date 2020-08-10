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