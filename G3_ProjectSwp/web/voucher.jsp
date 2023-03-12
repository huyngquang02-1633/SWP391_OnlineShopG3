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
    <div class="path-admin">VOUCHERS LIST</b></div>
    <div class="content-main">
        <hr/>
        <div id="content-main-dashboard">
            <div id="product-title-header">
                <div id="product-title-1" style="width: 25%;">
                </div>
                <div id="product-title-2" style="width: 55%;">
                    <form style="padding-bottom: 40px;">
                        <input type="text" name="txtSearch" placeholder="Enter employee name to search"/>
                        <input type="submit" value="Search"
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
                            <th>MinOrderValue</th>
                            <th>Percentage</th>
                            <th>Quantity</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>SIEUSAPSAN10</td>
                            <td>Gi?m gía 10%</td>
                            <td></td>
                            <td>12/04/2022</td>
                            <td>12/04/2022</td>
                            <td>1.000.000</td>
                            <td>10%</td>
                            <td>100</td>
                            <td id="myBtn">Edit</td>

                        </tr>
                        <tr>
                            <td>SIEUSAPSAN10</td>
                            <td>Gi?m gía 10%</td>
                            <td></td>
                            <td>12/04/2022</td>
                            <td>12/04/2022</td>
                            <td>1.000.000</td>
                            <td>10%</td>
                            <td>100</td>
                            <td id="myBtn">Edit</td>
                        </tr>
                        <tr>
                            <td>SIEUSAPSAN10</td>
                            <td>Gi?m gía 10%</td>
                            <td></td>
                            <td>12/04/2022</td>
                            <td>12/04/2022</td>
                            <td>1.000.000</td>
                            <td>10%</td>
                            <td>100</td>
                            <td id="myBtn">Edit</td>

                        </tr>
                        <tr>
                            <td>SIEUSAPSAN10</td>
                            <td>Gi?m gía 10%</td>
                            <td></td>
                            <td>12/04/2022</td>
                            <td>12/04/2022</td>
                            <td>1.000.000</td>
                            <td>10%</td>
                            <td>100</td>
                            <td id="myBtn">Edit</td>

                        </tr>
                        <tr>
                            <td>SIEUSAPSAN10</td>
                            <td>Gi?m gía 10%</td>
                            <td></td>
                            <td>12/04/2022</td>
                            <td>12/04/2022</td>
                            <td>1.000.000</td>
                            <td>10%</td>
                            <td>100</td>
                            <td id="myBtn">Edit</td>

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