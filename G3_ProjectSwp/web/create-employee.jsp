<%@include file="templates/header_admin.jsp" %>
<div id="content-left">
    <ul>
        <h6><a href="dashboard.html"><li>Dashboard</li></a></h6>
        <h6><a href="order.html"><li>Orders</li></a></h6>
        <h6><a href="product.html"><li>Products</li></a></h6>
        <h6><a href="customer.html"><li>Customers</li></a></h6>
        <h6><a href="employees.html"><li>Employees</li></a></h6>
    </ul>
</div>
<form action="createEmployee_admin" method="post">
    <div id="content-right">
        <div class="path-admin">CREATE A NEW EMPLOYEE</div>
        <div class="content-main">
            <div  id="content-main-product" >
                <div class="content-main-1">
                    <label>Last Name (*):</label><br/>
                    <input type="text" name="lastName" id=""><br/>
                    <label>First Name:</label><br/>
                    <input type="text" name="firstName" id=""><br/>
                    <label>Gender</label><br/>
                    <input type="text" name="gender" id=""><br/>
                    <label>Title:</label><br/>
                    <input type="text" name="title" id=""><br/>
                    <label>Title Of Courtesy:</label><br/>
                    <input type="text" name="titleOfCourtesy" id=""><br/>
                    <label>Status:</label><br/>
                    <input type="text" name="status" id=""><br/>
                    <label>Address:</label><br/>
                    <input type="text" name="address" id=""><br/>
                </div>
                <div class="content-main-1">
                    <label>Birth Date:</label><br/>
                    <input style="padding: 5px; margin: 3.5px;" type="date" name="birthDate" id=""><br/>
                    <label>Hire Date (*):</label><br/>
                    <input style="padding: 5px;" type="date" name="hireDate" id=""><br/>
                    <label>DepartmentID (*):</label><br/>
                    <select name="departmentID">
                        <option value="catid1">1</option>
                        <option value="catid2">2</option>
                    </select>
                    <br/>
                    <input type="checkbox" name="chkDiscontinued" id="" value="1"><br/>
                    <input style="justify-content: end;" type="submit" value="Save"/>
                </div>

            </div>
        </div>
    </div>
</form>

<div id="footer-admin">Mai la anh em</div>
</div>
</body>
</html>