<%@include file="templates/header.jsp" %>
<link rel="stylesheet" href="<%=path%>/css/profile.css">  
<c:set var="a" value="${account}" />
<c:set var="c" value="${customer}" />     
<div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="profile-nav col-md-3">
            <div class="panel">
                <div class="user-heading round">
                    <a href="#">
                        <img src="${AccCustomerSession.getImage().replace("=s96-c", "")}" alt="">
                    </a>
                    <h1>${userGoogle.getName()}</h1>
                    <p style="color: black;">${userGoogle.getEmail()}</p>
                </div>

                <ul class="nav nav-pills nav-stacked">

                    <li><a href="<%=path%>/account/profile"> <i class="fa fa-user"></i> Profile</a></li>
                    <li><a href="<%=path%>/account/profile_myOrder"> <i class="fa fa-calendar"></i> All Order <span class="label label-warning r-activity">9</span></a></li>
                    <li class="active"><a href="<%=path%>/account/profile1"> <i class="fa fa-edit"></i> Edit profile</a></li>
                </ul>
            </div>
        </div>
        <div class="profile-info col-md-9">
            <div class="panel">
                <div class="bio-graph-heading">
                    Update Profile
                </div>
                <div class="panel-body bio-graph-info">
                    <form name="form-edit" action="<%=path%>/account/profile1" method="post">  
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
                                <p><span>Birthday</span>: <input type="date" name="txtBirthday" value="${c.getDateOfBirth()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Phone </span>: <input type="text" name="txtPhone" value="${c.getPhoneNumber()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Create Date </span>: <input readonly type="date" name="txtCreatDate" value="${c.getCreateDate()}"></p>
                            </div>
                            <div class="bio-row">
                                <p><span>Gender </span>: <select name="txtGender" >
                                        <c:if test="${c.isGender()==true}">
                                            <option selected value="true">Male</option>
                                            <option value="false">Female</option>
                                        </c:if>
                                        <c:if test="${c.isGender()!=true}">
                                            <option value="true">Male</option>
                                            <option selected="false">Female</option>
                                        </c:if>
                                    </select></p></p>
                            </div>
                            <input onclick="return validateName()" type="submit" value="Save" />
                    </form>
                </div>
            </div>
        </div>
        <div>
        </div>
    </div>
</div>
</div>    <%@include file="templates/footer.jsp" %>
<script>
    function validateName() {
        let x = document.forms["form-edit"]["txtFirstName"].value;
        const regex = /^([a-zA-Z¿¡¬√»… ÃÕ“”‘’Ÿ⁄?????‡·‚„ËÈÍÏÌÚÛÙı˘˙??????????????????????????????????????????????????????????????????????????????????????????›?????????\s]+)$/i;
        if (x.trim() === '') {
    // N?u tÍn r?ng
        return false;
        }
        if (regex.test(x)) {
          // N?u tÍn ch? ch?a c·c k˝ t? ch? v‡ kho?ng tr?ng
          return true;
        } else {
          // N?u tÍn ch?a c·c k˝ t? ??c bi?t ho?c s?
          return false;
        }

//        let y = document.forms["form-edit"]["txtLastName"].value;
//        if (y != "" && y.match(letter)) {
//        } else if (y == "") {
//            alert("Name must be filled out");
//            return false;
//        } else {
//            alert("Name must be string");
//            return false;
//        }
    }
</script>