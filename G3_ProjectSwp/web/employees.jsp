<%@include file="templates/header_admin.jsp" %>
            <div id="content-left">
                <ul>
                    <h6><a href="<%=path%>/dashboard_admin"><li>Dashboard</li></a></h6>
        <h6><a href="<%=path%>/orderManage_admin"><li>Orders</li></a></h6>
                    <h6><a href="<%=path%>/product.jsp"><li>Products</li></a></h6>
                    <h6><a href="<%=path%>/customer.jsp"><li>Customers</li></a></h6>
                    <h6><a href="<%=path%>/employees.jsp"><li>Employees</li></a></h6>
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
                                        <option value="catid1">--- Select ---</option>
                                        <option value="catid1">Smart Phone</option>
                                        <option value="catid2">Computer</option>
                                        <option value="catid3">Television</option>
                                        <option value="catid4">Electronic</option>
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
                                <a href="create-employee.html">Create a new Employee</a>
                            </div>
                        </div>
                        <div id="order-table-admin">
                            <table id="orders">
                                <tr>
                                  <th>EmployeeID</th>
                                  <th>LastName</th>
                                  <th>FirstName</th>
                                  <th>DepartmentName</th>
                                  <th>Title</th>
                                  <th>TitleOfCourtesy</th>
                                  <th>HireDate</th>
                                  <th>Address</th>
                                  <th></th>
                                </tr>
                                <tr>
                                    <td><a href="order-detail.html?id=5">#5</a></td>
                                    <td>IPhone 14 Pro Max</td>
                                    <td>2000</td>
                                    <td>pieces</td>
                                    <td>50</td>
                                    <td>Smart Phone</td>
                                    <td>false</td>
                                    <td></td>
                                    <td>
                                        <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                        <a class="delete" href="delete.html?id=5">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="order-detail.html?id=5">#4</a></td>
                                    <td>IPhone 13 Pro Max</td>
                                    <td>1000</td>
                                    <td>pieces</td>
                                    <td>100</td>
                                    <td>Smart Phone</td>
                                    <td>false</td>
                                    <td></td>
                                    <td>
                                        <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                        <a class="delete" href="delete.html?id=5">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="order-detail.html?id=5">#3</a></td>
                                    <td>Macbook Pro 2021</td>
                                    <td>2100</td>
                                    <td>pieces</td>
                                    <td>20</td>
                                    <td>Labtop</td>
                                    <td>false</td>
                                    <td></td>
                                    <td>
                                        <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                        <a class="delete" href="delete.html?id=5">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="order-detail.html?id=5">#2</a></td>
                                    <td>Dell XPS</td>
                                    <td>2000</td>
                                    <td>pieces</td>
                                    <td>30</td>
                                    <td>Labtop</td>
                                    <td>false</td>
                                    <td></td>
                                    <td>
                                        <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                        <a class="delete" href="delete.html?id=5">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="order-detail.html?id=5">#1</a></td>
                                    <td>Bosh Wash</td>
                                    <td>1000</td>
                                    <td>pieces</td>
                                    <td>10</td>
                                    <td>Electronic</td>
                                    <td>false</td>
                                    <td></td>
                                    <td>
                                        <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                        <a class="delete" href="delete.html?id=5">Delete</a>
                                    </td>
                                </tr>
                              </table>
                        </div>
                        <div id="paging">
                            <div class="pagination">
                                <a href="#">&laquo;</a>
                                <a href="#">1</a>
                                <a href="#" class="active">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#">6</a>
                                <a href="#">&raquo;</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer-admin">Mai la anh em</div>
    </div>
</body>
</html>