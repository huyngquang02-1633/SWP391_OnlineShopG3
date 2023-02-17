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
            <div id="content-right">
                <div class="path-admin">CREATE A NEW EMPLOYEE</div>
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
        <div id="footer-admin">Mai la anh em</div>
    </div>
</body>
</html>