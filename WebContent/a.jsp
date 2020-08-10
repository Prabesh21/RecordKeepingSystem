<%@ page import="java.util.*" %>
<%
	String name=(String)session.getAttribute("NAME");
if(null==name){
	response.sendRedirect("login.jsp?message=enter username and password");
}
%>

<html lang="en">
<head><meta charset="ISO-8859-1">
<title>Home</title><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@ include file="css_all.jsp" %>

</head>

<body>
<%@ include file="nav_home.jsp" %>
<section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url('images/bg_1.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">
            <div class="col-md-6 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Today is <%= new Date() %></h1>
              <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">OPD Staffs</p>
              <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="a1.jsp" class="btn btn-primary px-4 py-3">Doctors</a></p>
              <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="a2.jsp" class="btn btn-primary px-4 py-3">Nurses</a></p>
              
            </div>
          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url('images/bg_2.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row slider-text align-items-center" data-scrollax-parent="true">
            <div class="col-md-6 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
              <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Care with smile</h1>
              <p class="mb-4"> Doctors and Nurse in this department provides opd facilities with their best care. We have list of all the doctors and nurse available here for opd.</p>
              
            </div>
          </div>
        </div>
      </div>
    </section>
<%@ include file="footer.jsp" %>
<%@ include file="js_login.jsp" %>
</body>
</html>