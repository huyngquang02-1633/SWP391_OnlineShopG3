<%@include file="templates/header.jsp" %>
<link rel="stylesheet" href="<%=path%>/css/profile.css">  
<c:set var="c" value="${customer}" />    
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
                    <form action="<%=path%>/account/profile1" method="post">  
                        <h1>Edit Profile</h1>
                        <div class="row">
                            <div style="display: none">
                                <p><span></span>: <input type="text" name="txtCustomerID" value="${c.getCustomerID()}"></p>

                            </div>
                            <div class="bio-row">
                                <p><span>First Name </span>: <input type="text" name="txtFirstName" value="${c.getFirstName()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Last Name </span>: <input type="text" name="txtLastName" value="${c.getLastName()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Address </span>: <input type="text" name="txtAddress" value="${c.getAddress()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Contact Title </span>: <input type="text" name="txtContactTitle" value="${c.getContactTitle()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Birthday</span>: <input type="text" name="txtBirthday" value="${c.getDateOfBirth()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Phone </span>: <input type="text" name="txtPhone" value="${c.getPhoneNumber()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Create Date </span>: <input type="text" name="txtCreatDate" value="${c.getCreateDate()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Gender </span>: <input type="text" name="txtGender" value="${c.isGender()==true?"Male":"Female"}"></p>
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