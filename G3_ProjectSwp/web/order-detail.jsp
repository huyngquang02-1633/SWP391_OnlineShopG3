<%@include file="templates/header_admin.jsp" %>
<div id="content-right">
    <div class="path-admin">ORDER DETAIL</b></div>
    <div class="content-main">
        <div id="content-main-dashboard">
            <div>
                <div class="profile-order-title">
                    <c:set var="od" value="${order}"></c:set>
                        <div class="profile-order-title-left">
                            <div>OrderID: ${od.getOrderID()}</div>
                        <div>Order creation date: ${od.getOrderDate()}</div>
                    </div>
                    <div class="profile-order-title-right">
                        <c:choose>
                            <c:when test="${od.getRequiredDate()!=null && od.getShippedDate()!=null}"><span style="color: green;">Completed</span></c:when>
                            <c:when test="${od.getRequiredDate()!=null && od.getShippedDate()==null}"><td style="color: blue;">Pending|<a style="color: orchid" onclick="return cancelOrder()" href="<%=path%>/account/profile1?idCancel=${od.getOrderID()}">Cancel</a></span></c:when>
                            <c:when test="${od.getRequiredDate()==null && od.getShippedDate()==null}"><td style="color: red;">Canceled</td></c:when>
                        </c:choose>

                    </div>
                </div>
                <table id="orders">
                    <tr>
                        <th>OrderID</th>
                        <th>ProductID</th>
                        <th>WarehouseID</th>
                        <th>SalePrice</th>
                        <th>DiscountID</th>
                    </tr>
                    <c:forEach var="odDetails" items="${orderDetailList}">
                        <td>${odDetails.getOrderID}</td>
                        <td> <c:forEach var="p" items="${productList}">
                                <c:if 
                                    test="${p.getProductID()==odDetails.getProductID()}">${p.getProductName()}</div>
                                </c:if>
                            </c:forEach></td>
                        <td>${odDetails.getWarehouseID()}(</td>
                        <td>${odDetails.getQuantity()}</td>
                        <td>${odDetails.getUnitPrice()} $</td>
                    </c:forEach>
                </table>
            </div>
        </div>

    </div>
    <div id="footer-admin">
        <p>Group 3 SE1639 - Online Shop</p>
        </body>
        </html>

