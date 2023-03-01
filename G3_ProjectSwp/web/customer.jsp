<%@include file="templates/header_admin.jsp" %>
<!-- The Modal -->
       <div id="myModal" class="modal">
        <div class="modal-content">
          <div class="close">&times;</div> <br>
          <div class="path-admin">CREATE A NEW EMPLOYEE</b></div>
                  <div class="content-main">
                    <form id="content-main-product">
                        <div class="content-main-1">
                            <label>Last Name (*):</label><br/>
                            <input type="text" name="txtProductName" id=""><br/>
                            <label>First Name:</label><br/>
                            <input type="text" name="txtUnitPrice" id=""><br/>
                            <label>Gender:</label><br/>
                            <select name="ddlCategory">
                                <option value="catid1">Smart Phone</option>
                                <option value="catid2">Computer</option>
                            </select>
                        </div>
                        <div class="content-main-1">
                            <label>ContactTitle:</label><br/>
                            <input type="text" name="txtUnitPrice" id=""><br/>
                            <label>Date Of Birth:</label><br/>
                            <input type="text" name="txtUnitPrice" id=""><br/>
                            <label>Address:</label><br/>
                            <input type="text" name="txtUnitsInStock" id=""><br/>
                            <br/>
                        </div>
                        <div class="content-main-1">
                            <label>Phone Number:</label><br/>
                            <input type="text" name="txtUnitsInStock" id=""><br/>
                            <label>Create Date:</label><br/>
                            <input type="date" name="txtUnitsInStock" id=""><br/>
                            <br/> 
                        </div>

                            <input style="margin: auto;" type="submit" value="Save"/>
                        
                    </form>
                  </div>
        </div>
  
  </div>
<div id="content-right">
    <div class="path-admin">CUSTOMERS LIST</b></div>
    <div class="content-main">
        <div id="content-main-dashboard">
            <div id="product-title-header">
                <div id="product-title-1" style="width: 25%;">
                    <b>Filter by Employees:</b>
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
                        <input type="text" name="txtSearch" placeholder="Enter customer name to search"/>
                        <input type="submit" value="Search"
                               </form>
                        </div>
                        </div>
                        <div id="order-table-admin">
                            <table id="orders">
                                <tr>
                                    <th>CustomerID</th>
                                    <th>LastName</th>
                                    <th>FirstName</th>
                                    <th>Gender</th>
                                    <th>ContactTitle</th>
                                    <th>DateOfBirth</th>
                                    <th>Address</th>
                                    <th>PhoneNumber</th>
                                    <th>CreateDate</th>
                                    <th></th>
                                </tr>
                                <tr>
                                    <td><a href="order-detail.html?id=5">#5</a></td>
                                    <td>IPhone </td>
                                    <td>2000</td>
                                    <td>pieces</td>
                                    <td>50</td>
                                    <td>Smart Phone</td>
                                    <td>false</td>
                                    <td>
                                        <div style="display: flex">
                                            <a id="myBtn">Edit</a> &nbsp; | &nbsp; 
                                            <a class="delete" href="delete.html?id=5">Delete</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="order-detail.html?id=5">#4</a></td>
                                    <td>IPhone </td>
                                    <td>1000</td>
                                    <td>pieces</td>
                                    <td>100</td>
                                    <td>Smart Phone</td>
                                    <td>false</td>
                                    <td>
                                        <div style="display: flex">
                                            <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                            <a class="delete" href="delete.html?id=5">Delete</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href="order-detail.html?id=5">#3</a></td>
                                    <td>Macbook Pro</td>
                                    <td>2100</td>
                                    <td>pieces</td>
                                    <td>20</td>
                                    <td>Labtop</td>
                                    <td>false</td>
                                    <td>
                                        <div style="display: flex">
                                            <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                            <a class="delete" href="delete.html?id=5">Delete</a>
                                        </div>
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
                                    <td>
                                        <div style="display: flex">
                                            <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                            <a class="delete" href="delete.html?id=5">Delete</a>
                                        </div>
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
                                    <td>
                                        <div style="display: flex">
                                            <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                            <a class="delete" href="delete.html?id=5">Delete</a>
                                        </div>
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
                </div>
            </div>
        </div>
    </div>
    <div id="footer-admin">Mai la anh em</div>
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
    };

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    };

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    };
</script>
</html>