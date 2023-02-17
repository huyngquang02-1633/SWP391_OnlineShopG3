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
                                <tr>
                                    <td><a href="order-detail.html?id=5">#5</a></td>
                                    <td>12-10-2022</td>
                                    <td>14-10-2022</td>
                                    <td>14-10-2022</td>
                                    <td>Tom</td>
                                    <td>David</td>
                                    <td>100</td>
                                    <td style="color: green;">Completed</td>
                                </tr>
                                <tr>
                                    <td><a href="#">#4</a></td>
                                    <td>11-10-2022</td>
                                    <td>12-10-2022</td>
                                    <td>11-10-2022</td>
                                    <td>Tom</td>
                                    <td>Susue</td>
                                    <td>300</td>
                                    <td style="color: green;">Completed</td>
                                </tr>
                                <tr>
                                    <td><a href="#">#3</a></td>
                                    <td>11-10-2022</td>
                                    <td>12-10-2022</td>
                                    <td></td>
                                    <td>Tom</td>
                                    <td>John</td>
                                    <td>1000</td>
                                    <td style="color: blue;">Pending | <a href="#">Cancel</a></td>
                                </tr>
                                <tr>
                                    <td><a href="#">#2</a></td>
                                    <td>10-10-2022</td>
                                    <td>12-10-2022</td>
                                    <td></td>
                                    <td>Marry</td>
                                    <td>Ronaldo</td>
                                    <td>1500</td>
                                    <td style="color: red;">Order canceled</td>
                                </tr>
                                <tr>
                                    <td><a href="#">#1</a></td>
                                    <td>09-10-2022</td>
                                    <td>10-10-2022</td>
                                    <td>11-10-2022</td>
                                    <td>Marry</td>
                                    <td>David</td>
                                    <td>200</td>
                                    <td style="color: green;">Completed</td>
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