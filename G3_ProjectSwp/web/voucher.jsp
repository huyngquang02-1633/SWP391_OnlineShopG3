<%@include file="templates/header_admin.jsp" %>
<div id="myModal" class="modal">
    <div class="modal-content">
        <div class="close">&times;</div> <br>
        <div class="path-admin">EDIT VOUCHER</b></div>
        <div class="content-main">
            <form id="content-main-product">
                <div class="content-main-1">
                    <label>DiscountID (*):</label><br/>
                    <input type="text" name="txtProductName" id=""><br/>
                    <label>Title:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                    <label>Description:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                </div>
                <div class="content-main-1">
                    <label>Start Date:</label><br/>
                    <input type="date" name="txtUnitPrice" id=""><br/>
                    <label>End Date:</label><br/>
                    <input type="date" name="txtUnitsInStock" id=""><br/>
                    <label>Min Order Value:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                    <br/>
                </div>
                <div class="content-main-1">
                    <label>Percentage:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                    <label>Quantity:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                </div>

                <input style="margin: auto;" type="submit" value="Save"/>

            </form>
        </div>
    </div>

</div>
<div id="content-right">
    <div class="path-admin">VOUCHERS LIST
    <c:if test="${msg!=null}">
        <strong style="margin-left: 188px; color: #09b83e">${msg}</strong>
    </c:if>
    <c:if test="${msg1!=null}">
        <strong style="margin-left: 188px; color: red">${msg1}</strong>
    </c:if>
    </div>
    
    <div class="content-main">
        <hr/>
        <div id="content-main-dashboard">

            <div id="product-title-header">
                <div id="product-title-1" style="width: 25%;">
                </div>
                <div id="product-title-2" style="width: 55%;">
                    <form action="<%=path%>/SearchVoucher"  method="post" style="padding-bottom: 40px;">
                        <input type="text" name="txtSearch" value="${searchValue}" placeholder="Enter employee name to search"/>
                        <input type="submit" value="Search"/>
                    </form>                 
                </div>
                <div id="product-title-3" style="width: 20%;">
                    <a href="create-voucher.jsp">Create a new Voucher</a>
                </div>
            </div>
            <div id="order-table-admin">
                <table id="orders">
                    <tr>
                        <th>DiscountID</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>StartDate</th>
                        <th>EndDate</th>
                        <th>Percentage</th>
                        <th>Quantity</th>
                        <th></th>
                    </tr>
                    <c:forEach items = "${vList}" var="x" >
                        <c:url value="/CreateVoucher_admin" var="Edit">
                            <c:param name="id" value="${x.getDiscountID()}" />
                        </c:url>
                        <c:url value="/deleteVoucher_admin" var="Delete">
                            <c:param name="id" value="${x.getDiscountID()}" />
                        </c:url>
                        <tr>
                            <td>${x.getDiscountID()}</td>
                            <td>${x.getTitle()}</td>
                            <td>${x.getDescription()}</td>
                            <td>${x.getStartDate()}</td>
                            <td>${x.getEndDate()}</td>
                            <td>${x.getPercentage()}</td>
                            <td>${x.getQuantity()}</td>
                            <td><a href="${Edit}">Edit</a> &nbsp; | &nbsp; 
                                <a class="s" href="${Delete}">Delete</a></td>
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
<div id="footer-admin">2023 All Rights Reserved By &copy; Book Library</div>
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
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</html>