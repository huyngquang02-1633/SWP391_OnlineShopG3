<%@include file="templates/header.jsp" %>
<div class="container bootstrap snippets bootdey">
<div class="row">
  <div class="profile-nav col-md-3">
      <div class="panel">
          <div class="user-heading round">
              <a href="#">
                  <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
              </a>
              <h1>Camila Smith</h1>
              <p>deydey@theEmail.com</p>
          </div>

          <ul class="nav nav-pills nav-stacked">

              <li class="active"><a href="<%=path%>/account/profile"> <i class="fa fa-user"></i> Profile</a></li>
              <li><a href="<%=path%>/account/profile_myOrder"> <i class="fa fa-calendar"></i> All Order <span class="label label-warning pull-right r-activity">9</span></a></li>
              <li><a href="<%=path%>/account/profile"> <i class="fa fa-edit"></i> Edit profile</a></li>

              <li><a href="#"> <i class="glyphicon glyphicon-plane"></i> Ship Address</a></li>
          </ul>
      </div>
  </div>
  <div class="profile-info col-md-9">
      <div class="panel">
          <div class="bio-graph-heading">
              Aliquam ac magna metus. Nam sed arcu non tellus fringilla fringilla ut vel ispum. Aliquam ac magna metus.
          </div>
          <div class="panel-body bio-graph-info">
              <form>  
              <h1>Edit Profile</h1>
              <div class="row">
                  <div class="bio-row">
                      <p><span>First Name </span>: <input type="text" id="fname" name="fname"></p>
                  </div>
                  <div class="bio-row">
                      <p><span>Last Name </span>: <input type="text" id="fname" name="fname"></p>
                  </div>
                  <div class="bio-row">
                      <p><span>Address </span>: <input type="text" id="fname" name="fname"></p>
                  </div>
                  <div class="bio-row">
                      <p><span>Birthday</span>: <input type="text" id="fname" name="fname"></p>
                  </div>
                  <div class="bio-row">
                      <p><span>Phone </span>: <input type="text" id="fname" name="fname"></p>
                  </div>
                  <div class="bio-row">
                      <p><span>Create Date </span>: <input type="text" id="fname" name="fname"></p>
                  </div>
                  <input style="padding: 6px 18px;
                                           display: flex;
                                           margin: auto;
                                           border-radius: 10%" type="submit" value="Save" />
                  </form>
              </div>
          </div>
      </div>
      <div>
      </div>
  </div>
</div>
</div>    <%@include file="templates/footer.jsp" %>