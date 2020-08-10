<%@ page import="java.util.*" %>
<%
	String name=(String)session.getAttribute("NAME");
if(null==name){
	response.sendRedirect("login.jsp?message=enter username and password");
}
%>
<h1>welcome to Breast Screening</h1>
 Breast cancer screening is the medical screening of asymptomatic, apparently healthy women for breast cancer in an attempt to achieve an earlier diagnosis. The assumption is that early detection will improve outcomes. A number of screening tests have been employed, including clinical and self breast exams, mammography, genetic screening, ultrasound, and magnetic resonance imaging.<br>
Today is <%= new Date() %>
<br>
<h2>Available facilities</h2>
<a href="b1.jsp" >Doctors</a><br>
<a href="b2.jsp">Nurses</a><br>
<a href="logout.jsp">Log out</a>