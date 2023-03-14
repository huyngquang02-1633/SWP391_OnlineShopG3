<%@include file="templates/header_admin.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span> <br>
        <div class="path-admin">UPDATE EMPLOYEE INFORMATION</b></div>
        <div class="content-main">
            <form id="content-main-product">
                <div class="content-main-1">
                    <label>Last Name (*):</label><br/>
                    <input type="text" name="txtProductName" id=""><br/>
                    <label>First Name:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                    <label>Title:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                    <label>Status:</label><br/>
                    <select name="ddlCategory">
                        <option value="catid1">Smart Phone</option>
                        <option value="catid2">Computer</option>
                    </select>
                </div>
                <div class="content-main-1">
                    <label>TitleOfCourtesy:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                    <label>Address:</label><br/>
                    <input type="text" name="txtUnitsInStock" id=""><br/>
                    <label>Department (*):</label><br/>
                    <select name="ddlCategory">
                        <option value="catid1">Smart Phone</option>
                        <option value="catid2">Computer</option>
                        <option value="catid3">Television</option>
                        <option value="catid4">Electronic</option>
                    </select>
                    <br/>
                </div>
                <div class="content-main-1">
                    <label>Birth Date:</label><br/>
                    <input type="date" name="txtUnitsInStock" id=""><br/>
                    <label>Hire Date (*):</label><br/>
                    <input type="date" name="txtUnitsInStock" id=""><br/>
                    <label>Gender:</label><br/>
                    <select name="ddlCategory">
                        <option value="catid1">Smart Phone</option>
                        <option value="catid2">Computer</option>
                    </select>
                    <br/> 
                </div>

                <input style="margin: auto;" type="submit" value="Save"/>

            </form>
        </div>
    </div>

</div>
<div id="content-right">
    <div class="path-admin">EMPLOYEES LIST</b></div>
    <div class="content-main">
        <div id="content-main-dashboard">
            <div id="product-title-header">
                <div id="product-title-1" style="width: 25%;">
                    <b>Filter by Departments:</b>
                    <form action="employeeManager_admin">
                        <select name="employeeFilter">
                            <option value="0">No Filter</option>
                                        <c:forEach items="${depart}" var="dep">
                                           
                                            <c:choose>
                                                <c:when test="${dep.getDepartmentID() == employeeIDSession}">
                                                    <option value="${dep.getDepartmentID()}" selected="selected"><c:out value="${dep.getDepartmentName()}"/></option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${dep.getDepartmentID()}"><c:out value="${dep.getDepartmentName()}"/></option>
                                                </c:otherwise>
                                            </c:choose>                               
                                        </c:forEach>
                        </select>
                        <input type="submit" value="Filter">
                    </form>
                </div>
                
                <div id="product-title-2" style="width: 55%;">
                    <form style="padding-bottom: 40px;" action="SearchEmployee_admin" method="post">
                        <input type="text" name="txtSearch" value="${searchValue}" placeholder="Enter employee name to search"/>
                        <input type="submit" value="Search">
                    </form>
                </div>
                <div id="product-title-3" style="width: 20%;">
                    <a href="create-employee.jsp">Create a new Employee</a>
                </div>
            </div>
            <div id="order-table-admin">
                <table id="orders">
                    <tr>
                        <th>EmployeeID</th>
                        <th>LastName</th>
                        <th>FirstName</th>
                        <th>Gender</th>
                        <th>Department Name</th>
                        
                        <!--<th>Title</th>-->
                        <th>Title</th>
                        <th>TitleOfCourtesy</th>
                        <th>Birthday</th>
                        <th>HireDate</th>
                        <th>Address</th>
                        <th>Phone Number</th>
                        <th>Status</th>
                    </tr>
                    <c:forEach items = "${listEmp}" var="x" >

                        <tr>
                            <td>${x.getEmployeeID()}</td>
                            <td>${x.getLastName()}</td> 
                            <td>${x.getFirstName()}</td>
                            <td>
                                <c:if test="${x.isGender() == true}">Male</c:if>
                                <c:if test="${x.isGender() == false}">Female</c:if>
                                </td> 
                                <td>
                                <c:forEach var="dep" items="${depart}"> 
                                    <c:if test="${x.getDepartmentID() == dep.getDepartmentID()}">${dep.getDepartmentName()}</c:if>
                                </c:forEach>   </td> 
                            <td>${x.getTitle()}</td> 
                            <td>${x.getTitleOfCourtesy()}</td> 
                            <td>${x.getBirthDate()}</td> 
                            <td>${x.getHireDate()}</td> 
                            <td>${x.getAddress()}</td> 
                            <td>${x.getPhoneNumber()}</td> 
                            <c:choose>
                                <c:when test="${x.getDepartmentID() == 1}"><td style="color: blue;">Admin</td></c:when>
                                <c:when test="${x.isStatus() == true}"><td style="color: green;">Active | <a herf ="#" onclick="showMess(${x.getEmployeeID()})">Inactivate</a></td></c:when>
                                <c:when test="${x.isStatus() == false}"><td style="color: red;">Inactivate | <a herf ="#" onclick="showMesss(${x.getEmployeeID()})">Active</a></td></c:when>
                            </c:choose>
                        </tr>
                    </c:forEach>


                </table>
                <div class="pagination" style="">
                    <%-- Hi?n th? nút Prev --%>
                    <%--<c:if test="${index > 1}">--%>
                        <!--<a href="employeeManager_admin?index=${index-1}">&laquo; Prev</a>-->
                    <%--</c:if>--%>

                    <%-- Hi?n th? các nút trang --%>
                    <c:forEach begin="1" end="${endP}" var="i">
                        <c:choose>
                            <%-- Hi?n th? nút trang hi?n t?i --%>
                            <c:when test="${i == index}">
                                <span class="current">${i}</span>
                            </c:when>

                            <%-- Hi?n th? các nút trang khác --%>
                            <c:otherwise>
                                <a href="employeeManager_admin?index=${i}">${i}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <%-- Hi?n th? nút Next --%>
                    <%--<c:if test="${index < endP}">--%>
                        <!--<a href="employeeManager_admin?index=${index+1}">Next &raquo;</a>-->
                    <%--</c:if>--%>
                </div>
                <%--Current page: ${currentPage} <br>
                Number of pages: ${numberOfPage} <br>
                <c:if test="${sessionMsg != null}">
                    <div>${sessionMsg}</div>
                </c:if>
                <div id="paging">
                    <div class="pagination">
                        <c:if test="${currentPage > 1}">
                            <c:url value="/employeeManager_admin" var="paginationPrevous">
                                <c:param name="currentPage" value="${currentPage - 1}" />
                            </c:url>
                            <a href="${paginationPrevous}">&laquo;</a>
                        </c:if>
                        <c:forEach begin="1" end="${numberOfPage}" step="1" var="stepValue">
                            <c:choose>
                                <c:when test="${stepValue == currentPage}">
                                    <a href="#" class="active">${stepValue}</a>
                                </c:when>
                                <c:otherwise>
                                    <c:url value="/employeeManager_admin" var="pagination">
                                        <c:param name="currentPage" value="${stepValue}" />
                                    </c:url>
                                    <a href="${pagination}">${stepValue}</a>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                    <c:if test="${currentPage<numberOfPage}">
                        <c:url value="/employeeManager_admin" var="paginationNext">
                            <c:param name="currentPage" value="${currentPage+1}" />
                        </c:url>
                        <a href="${paginationNext}">&raquo;</a>
                    </c:if>--%>
            </div>
        </div>
    </div>
</div>

</div>
</div>
<div id="footer-admin">2023 All Rights Reserved By &copy; Book Library</div>
</div>
</body>
<script>
    function showMess(getEmployeeID) {
        var option = confirm('are you sure to change?');
        if (option === true) {
            window.location.href = 'deleteEmployee_admin?sEmployeeID=' + getEmployeeID;
        }

    }
</script>
<script>
    function showMesss(getEmployeeID) {
        var option = confirm('are you sure to change?');
        if (option === true) {
            window.location.href = 'changeStatusEmployee_admin?sEmployeeID=' + getEmployeeID;
        }

    }
</script>
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
    };

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    };

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    };
</script>
</html>