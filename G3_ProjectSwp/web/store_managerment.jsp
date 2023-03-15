<%@include file="templates/header_admin.jsp" %>
<!-- The Modal -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <div class="close">&times;</div> <br>
        <div class="path-admin">EDIT YOUR INFOMATION</div>
        <div class="content-main">
            <form action="<%=path%>/StoreManager_admin" method="post" id="content-main-product">
                <div class="content-main-1">
                    <input style="display: none" type="text" name="txtEmployeeID" id="" value="${em.getEmployeeID()}"><br/>
                    <label>Last Name:</label><br/>
                    <input type="text" name="txtLastName" id="" value="${em.getLastName()}"><br/>
                    <label>First Name:</label><br/>
                    <input type="text" name="txtFirstName" id="" value="${em.getFirstName()}"><br/>
                    <label>Title:</label><br/>
                    <input type="text" name="txtTitle" id="" value="${em.getTitle()}"><br/>
                    <label>Status:</label><br/>
                    <input readonly type="text" value="<c:choose><c:when test="${em.isStatus() == true}">Active</c:when><c:when test="${em.isStatus() == false}">Suspended</c:when></c:choose>"/>
                        </div>
                        <div class="content-main-1">
                            <label>Phone Number:</label><br/>
                                <input type="text" name="txtPhoneNumber" id="" value="${em.getPhoneNumber()}"><br/>
                    <label>Title Of Courtesy:</label><br/>
                    <input type="text" name="txtTitleOfCourtesy" id="" value="${em.getTitleOfCourtesy()}"><br/>
                    <label>Address:</label><br/>
                    <input type="text" name="txtAddress" id="" value="${em.getAddress()}"><br/>
                    <label>Department:</label><br/>
                    <input readonly type="text" name="txtAddress" id="" value="<c:forEach var="dep" items="${depart}"> <c:if test="${em.getDepartmentID() == dep.getDepartmentID()}">${dep.getDepartmentName()}</c:if></c:forEach>"><br/>
                            <br/>
                        </div>
                        <div class="content-main-1">
                            <label>Birth Date:</label><br/>
                            <input type="date" name="txtBirthDate" id="" value="${em.getBirthDate()}"><br/>
                    <label>Hire Date:</label><br/>
                    <input readonly type="date" name="txtHireDate" id="" value="${em.getHireDate()}"><br/>
                    <label>Gender:</label><br/>
                    <select name="txtGender" >
                        <c:if test="${em.isGender()==true}">
                            <option selected value="true">Male</option>
                            <option value="false">Female</option>
                        </c:if>
                        <c:if test="${em.isGender()!=true}">
                            <option value="true">Male</option>
                            <option selected="false">Female</option>
                        </c:if>
                    </select><br/> 
                </div>

                <input style="margin: auto;" type="submit" value="Save"/>

            </form>
        </div>
    </div>

</div>
<div id="content-right">
    <div class="path-admin">STORE MANAGERMENT
        <c:if test="${msg!=null}">
        <strong style="margin-left: 102px; color: #09b83e">${msg}</strong>
    </c:if>
    <c:if test="${msg1!=null}">
        <strong style="margin-left: 188px; color: red">${msg1}</strong>
    </c:if>
    </div>
    <div style="background-color: white;" class="content-main">
        <hr/>
        <div class="msg"><strong>Hello ${em.getFirstName()}</strong><p>, you have a few tasks to handle!</p></div>
        <div class="info-homeadmin">
            <div class="info-homeadmin-left">
                <div style=" width: 100%; border-right: solid 1px black; display: flex;" class="content-main-1">
                    <div style="width: 30%;"><img style="width: 80%;border-radius: 50%;" src="https://i.pinimg.com/736x/4a/4c/29/4a4c29807499a1a8085e9bde536a570a.jpg" alt=""><br>
                    </div>
                    <div class="textInfo">
                        <div><strong>Email</strong>: ${account.getEmail()}</div>

                        <div><strong>Last Name</strong>: ${em.getLastName()}</div>
                        <div><strong>First Name</strong>: ${em.getFirstName()}</div>
                        <div><strong>Title</strong>: ${em.getTitle()}</div>
                        <div><strong>Phone Number</strong>: ${em.getPhoneNumber()}</div>
                        <div><strong>Title Of Courtesy</strong>: ${em.getTitleOfCourtesy()}</div>
                        <div><strong>Address</strong>: ${em.getAddress()}</div>
                        <div><strong>Department</strong>: 
                            <c:forEach var="dep" items="${depart}"> 
                                <c:if test="${em.getDepartmentID() == dep.getDepartmentID()}">${dep.getDepartmentName()}</c:if>
                            </c:forEach>
                        </div>
                        <div><strong>Birth Date</strong>: ${em.getBirthDate()}</div>
                        <div><strong>Hire Date</strong>: ${em.getHireDate()}</div>
                        <div><strong>Gender</strong>: 
                            <c:if test="${em.isGender() == true}">Male</c:if>
                            <c:if test="${em.isGender() == false}">Female</c:if>
                            </div>
                            <div><strong>Status</strong>: 
                            <c:choose>
                                <c:when test="${em.isStatus() == true}">Active</c:when>
                                <c:when test="${em.isStatus() == false}">Suspended</c:when>
                            </c:choose>
                        </div>
                        <button style="    padding: 3px;
                                border: solid 1px #dbdbdb;
                                border-radius: 5px;
                                margin: 4px;
                                cursor: pointer;" id="myBtn">Update Profile <i class="fa-solid fa-pen"></i></button>
                    </div>
                </div>
            </div>
            <div class="info-homeadmin-right">
                <div class="wrapper">
                    <div class="div-square">
                        <h4>20</h4>
                        <p>ch? x? lý</p>
                    </div>

                    <div class="div-square">
                        <h4>20</h4>
                        <p>ch? x? lý</p>
                    </div>


                    <div class="div-square">
                        <h4>20</h4>
                        <p>ch? x? lý</p>
                    </div>

                    <div class="div-square">
                        <h4>20</h4>
                        <p>ch? x? lý</p>
                    </div>

                    <div class="div-square">
                        <h4>20</h4>
                        <p>ch? x? lý</p>
                    </div>
                    <div class="div-square">
                        <a href=""><h4>20</h4></a>
                        <p>ch? x? lý</p>
                    </div>

                    <div class="div-square">
                        <a href=""><h4>20</h4></a>
                        <p>ch? x? lý</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</div>

<div id="footer-admin">
    <p>Group 3 SE1639 - Online Shop</p>
</div>
</div>

</body>
<script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</html>