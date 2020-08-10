<%@ include file="forsession.jsp" %>

<form method="post" action="addp_db.jsp">
Id:<input type="text" name="id" required><br>
Name:<input type="text" name="name" required><br>
Address:<input type="text" name="address" required><br>
Arrival Date:<input type="date" name="arrival" required><br>
Discharge Date<input type="date" name="discharge"><br>
Phone no:<input type="number" name="phone" required><br>
Health Report:<input type="text" name="hr" required><br>
Departments Visited:<input type="text" name="dvisited" required><br>
Doctor's Appointed:<input type="text" name="drappointed" required><br>
Ward no:<input type="number" name="ward" required><br>
Bed no:<input type="number" name="bed" required><br>


<input type="submit" value="Submit">
</form>