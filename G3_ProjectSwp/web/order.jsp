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
    <div class="path-admin">ORDERS LIST</b></div>
    <div class="content-main">
        <div id="content-main-dashboard">
            <div id="order-title">
                <b>Filter by Order Date:</b>
                <form style="padding-bottom: 10px;">
                    <b>From</b>: <input type="date" name="txtStartOrderDate"/>
                    <b>To</b>: <input type="date" name="txtEndOrderDate"/>
                    <input type="submit" value="Filter">
                </form>
            </div>
            <div id="order-table">
                <table id="orders">
                    <tr>
                        <th>OrderID</th>
                        <th>OrderDate</th>
                        <th>RequiredDate</th>
                        <th>ShippedDate</th>
                        <th>Employee</th>
                        <th>Customer</th>
                        <th>Freight($)</th>
                        <th>Status</th>
                    </tr>
                    <c:forEach items = "${listOrder}" var="x" >
                        <tr>
                            <td>${x.orderID}</td>
                            <td>${x.orderDate}</td> 
                            <td>${x.requiredDate}</td>
                            <td>${x.shippedDate}</td> 
                            <td>${x.employeeID}</td>
                            <td>${x.customerID}</td> 
                            <td>${x.freight}</td> 

                            <td>
                                <c:choose>
                                    <c:when test="${x.shippedDate != null}">
                                        <p style="color: green;">Completed</p>
                                    </c:when>   
                                    <c:when test="${x.requiredDate != null && shippedDate == null}">
                                        <p style="color: blue;">Pending | <button onclick="myFunction()">Cancle</button></p>
                                    </c:when> 
                                    <c:when test="${x.requiredDate == null && shippedDate == null}">
                                        <p style="color: red;">Order canceled</p>
                                    </c:when> 
                                </c:choose>

                        </tr>
                    </c:forEach>

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
<script>
    function myFunction() {
        let text = "Do you want to cancle?";
        if (confirm(text) == true) {
            <p style="color: red;">Cancle</p>
        } else {
            <p style="color: blue;">Cancle</p>
        }
     
    }
</script>
</div>
</body>
</html>