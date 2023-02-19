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
                <div class="path-admin">ORDER DETAIL</b></div>
                <div class="content-main">
                    <div id="content-main-dashboard">
                        <div>
                            <div class="profile-order-title">
                                <div class="profile-order-title-left">
                                    <div>OrderID: #5</div>
                                    <div>Order creation date: 12-10-2022</div>
                                </div>
                                <div class="profile-order-title-right">
                                    <span style="color: green;">Completed</span>
                                </div>
                            </div>
                            <div class="profile-order-content" style="background-color: white;">
                                 <div class="profile-order-content-col1">
                                    <a href="detail.html"><img src="img/2.jpg" width="100%"/></a>
                                 </div>
                                 <div class="profile-order-content-col2">Product 12</div>
                                 <div class="profile-order-content-col3">Quantity: 1</div>
                                 <div class="profile-order-content-col4">1000 $</div>
                            </div>
                            <div class="profile-order-content" style="background-color: white;">
                                <div class="profile-order-content-col1">
                                   <a href="detail.html"><img src="img/1.jpg" width="100%"/></a>
                                </div>
                                <div class="profile-order-content-col2">Product 1</div>
                                <div class="profile-order-content-col3">Quantity: 2</div>
                                <div class="profile-order-content-col4">2000 $</div>
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