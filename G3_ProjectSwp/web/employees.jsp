<%@include file="templates/header_admin.jsp" %>
<<<<<<< HEAD
    <div id="myModal" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span> <br>
        <div class="path-admin">CREATE A NEW EMPLOYEE</b></div>
                <div class="content-main">
                    <form id="content-main-product">
                        <div class="content-main-1">
                            <label>Last Name (*):</label><br/>
                            <input type="text" name="txtProductName" id=""><br/>
                            <label>First Name:</label><br/>
                            <input type="text" name="txtUnitPrice" id=""><br/>
                            <label>Title:</label><br/>
                            <input type="text" name="txtQuantityPerUnit" id=""><br/>
                            <label>Title Of Courtesy:</label><br/>
                            <input type="text" name="txtUnitsInStock" id=""><br/>
                            <label>Address:</label><br/>
                            <input type="text" name="txtUnitsInStock" id=""><br/>
                        </div>
                        <div class="content-main-1">
                            <label>Birth Date:</label><br/>
                            <input style="padding: 5px; margin: 3.5px;" type="date" name="txtUnitsInStock" id=""><br/>
                            <label>Hire Date (*):</label><br/>
                            <input style="padding: 5px;" type="date" name="txtUnitsInStock" id=""><br/>
                            <label>Department (*):</label><br/>
                            <select name="ddlCategory">
                                <option value="catid1">Smart Phone</option>
                                <option value="catid2">Computer</option>
                                <option value="catid3">Television</option>
                                <option value="catid4">Electronic</option>
                            </select>
                            <br/>
                            <input type="checkbox" name="chkDiscontinued" id=""><br/>
                            <input style="justify-content: end;" type="submit" value="Save"/>
                        </div>
                    </form>
                </div>
      </div>

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
                                    <a id="myBtn">Edit</a> &nbsp; | &nbsp; 
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
=======
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
>>>>>>> e33e2e690c19bc4d386adabaa589a80832950d02
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
<<<<<<< HEAD
    <div id="footer-admin">Mai la anh em</div>
=======
</div>

>>>>>>> e33e2e690c19bc4d386adabaa589a80832950d02
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
    btn.onclick = function() {
      modal.style.display = "block";
    };
    
    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    };
    
    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target === modal) {
        modal.style.display = "none";
      }
    };
</script>
</html>