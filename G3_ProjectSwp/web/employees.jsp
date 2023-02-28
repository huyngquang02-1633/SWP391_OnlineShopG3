<%@include file="templates/header_admin.jsp" %>
<div id="content-left">
    <ul>
        <h6><a href="<%=path%>/dashboard_admin"><li>Dashboard</li></a></h6>
        <h6><a href="<%=path%>/orderManage_admin"><li>Orders</li></a></h6>
        <h6><a href="<%=path%>/productManage_admin"><li>Products</li></a></h6>
        <h6><a href="<%=path%>/customer.jsp"><li>Customers</li></a></h6>
        <h6><a href="<%=path%>/employeeManager_admin"><li>Employees</li></a></h6>
    </ul>
</div>
<div id="content-right">
    <div class="path-admin">PRODUCTS LIST</b></div>
    <div class="content-main">
        <div id="content-main-dashboard">
            <div id="product-title-header">
                <div id="product-title-1" style="width: 25%;">
                    <b>Filter by Departments:</b>
                    <form>
                        <select name="ddlCategory">
                            <option value="catid1">1</option>
                            <option value="catid1">2</option>

                        </select>
                        <input type="submit" value="Filter">
                    </form>
                </div>
                <div id="product-title-2" style="width: 55%;">
                    <form style="padding-bottom: 40px;">
                        <input type="text" name="txtSearch" placeholder="Enter employee name to search"/>
                        <input type="submit" value="Search"/>
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
<!--                        <th>Gender</th>-->
                        <th>DepartmentID</th>
                        <th>Title</th>
                        <th>TitleOfCourtesy</th>
                        <th>HireDate</th>
                        <th>Address</th>

                    </tr>
                    <c:forEach items = "${empList}" var="x" >
                        <tr>
                            <td>${x.employeeID}</td>
                            <td>${x.lastName}</td> 
                            <td>${x.firstName}</td>                          
<!--                            <td>
                                <%--<c:if test="${x.gender == true}">Male</c:if>--%>
                                <%--<c:if test="${x.gender == false}">Female</c:if>--%>
                            </td>-->
                            <td>${x.departmentID}</td> 
                            <td>${x.title}</td>
                            <td>${x.titleOfCourtesy}</td> 
                            <td>${x.hireDate}</td> 
                            <td>${x.address}</td> 
                            <td>
                                <a href="deleteEmployee_admin?sEmployeeID=${x.employeeID}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>    
                        
                    </table>
                </div>
                
            </div>
        </div>
    </div>
</div>

</div>
</body>
</html>