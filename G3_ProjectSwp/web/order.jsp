<%@include file="templates/header_admin.jsp" %>
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
                        <th>CustomerID</th>
                        <th>EmployeeID</th>
                        <th>OrderDate</th>
                        <th>RequiredDate</th>
                        <th>ShippedDate</th>
                        <th>Freight($)</th>
                        <th>ShipName</th>
                        <th>ShipAddress</th>
                        <th>ShipCity</th>
                        <!--<th>ShipRegion</th>-->
                        <th>ShipCountry</th>
                        <th>Status</th>


                    </tr>

                    <c:forEach var="od" items="${listInCurrentPage}">
                        <tr>
                            <td><a href="<%=path%>/orderManage_admin?idOdDetail=${od.getOrderID()}">${od.getOrderID()}</a></td>
                            <td>${od.getCustomerID()}</td>
                            <td>${od.getEmployeeID()}</td>
                            <td>${od.getOrderDate()}</td>
                            <td>${od.getRequiredDate()}</td>
                            <td>${od.getShippedDate()}</td>
                            <td>${od.getFreight()}</td>                  
                            <td>${od.getShipName()}</td>
                            <td>${od.getShipAddress()}</td>
                            <td>${od.getShipCity()}</td> 
                            <!--<td>${od.getShipRegion()}</td>--> 
                            <td>${od.getShipCountry()}</td> 

                            <c:choose>
                                <c:when test="${od.getRequiredDate()!=null && od.getShippedDate()!=null}"><td style="color: green;">Completed</td></c:when>
                                <c:when test="${od.getRequiredDate()!=null && od.getShippedDate()==null}"><td style="color: blue;">Pending|  <button onclick="cancle(${od.getOrderID()},${currentPage})">Cancel</button></td></c:when>
                                <c:when test="${od.getRequiredDate()==null && od.getShippedDate()==null}"><td style="color: red;">Canceled</td></c:when>
                            </c:choose>
                        </tr>
                    </c:forEach>
                </table>
            </div>

            <c:if test="${CancelMsg!=null}"><div  style="color: orange; text-align: center;">${CancelMsg}</div> </c:if>
            <c:if test="${emptyListMsg!=null}"><div style="color: orange; text-align: center;">${emptyListMsg}</div> </c:if>

                <div id="paging">
                    <div class="pagination">

                    <c:if test="${currentPage>1}">
                        <c:url value="/orderManage_admin" var="paginationPrevous">
                            <c:param name="currentPage" value="${currentPage-1}" />
                        </c:url>
                        <a href="${paginationPrevous}">&laquo;</a>
                    </c:if>

                    <c:forEach begin="1" end="${numberOfPage}" step="1" var="stepValue">
                        <c:choose>
                            <c:when test="${stepValue == currentPage}">
                                <a href="#" class="active">${stepValue}</a>
                            </c:when>
                            <c:otherwise>
                                <c:url value="/orderManage_admin" var="pagination">
                                    <c:param name="currentPage" value="${stepValue}" />
                                </c:url>
                                <a href="${pagination}">${stepValue}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <c:if test="${currentPage<numberOfPage}">
                        <c:url value="/orderManage_admin" var="paginationNext">
                            <c:param name="currentPage" value="${currentPage+1}" />
                        </c:url>
                        <a href="${paginationNext}">&raquo;</a>
                    </c:if>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function cancle(id, curentPage) {

        var result = confirm("Do you want to cancel this order?!");
        if (result == true) {
            var url = "/G3_ProjectSwp/orderManage_admin?idCancel=" + id + "&currentPage=" + curentPage;
            document.location.href = url;
        }

    }
</script>
</div>
</body>
</html>