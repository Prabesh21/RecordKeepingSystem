<!-- Modal -->
  <div class="modal fade" id="modalRequest" tablogin="-1" role="dialog" aria-labelledby="modalRequestLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modalRequestLabel">Login Details</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form method="post" action="login_check.jsp">
            <div class="form-group">
              <!-- <label for="appointment_name" class="text-black">Username</label> -->
              <input type="text" name="name" value="<%=name%>" class="form-control" id="appointment_name" placeholder="Username"><br>
              <!-- <label for="appointment_name" class="text-black">Password</label> -->
              <input type="password" name="password" class="form-control" id="appointment_name" placeholder="Password"><br>
              <input type="checkbox" value="yes" name="remember" <%=checked%> class="form-control" id="appointment_name">Remember me
              
            </div>
            

            <div class="form-group">
              <input type="submit" value="Login Here" class="btn btn-primary">
            </div>
          </form>
        </div>
        
      </div>
    </div>
  </div>
  <%@ include file="footer.jsp" %>
