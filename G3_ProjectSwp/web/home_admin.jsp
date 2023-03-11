<%@include file="templates/header_admin.jsp" %>
<!-- The Modal -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <div class="close">&times;</div> <br>
        <div class="path-admin">EDIT YOUR INFOMATION</b></div>
        <div class="content-main">
            <form id="content-main-product">
                <div class="content-main-1">
                    <label>Last Name (*):</label><br/>
                    <input type="text" name="txtProductName" id=""><br/>
                    <label>First Name:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                    <label>Title:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                    <label>Status:</label><br/>
                    <select name="ddlCategory">
                        <option value="catid1">Smart Phone</option>
                        <option value="catid2">Computer</option>
                    </select>
                </div>
                <div class="content-main-1">
                    <label>TitleOfCourtesy:</label><br/>
                    <input type="text" name="txtUnitPrice" id=""><br/>
                    <label>Address:</label><br/>
                    <input type="text" name="txtUnitsInStock" id=""><br/>
                    <label>Department (*):</label><br/>
                    <select name="ddlCategory">
                        <option value="catid1">Smart Phone</option>
                        <option value="catid2">Computer</option>
                        <option value="catid3">Television</option>
                        <option value="catid4">Electronic</option>
                    </select>
                    <br/>
                </div>
                <div class="content-main-1">
                    <label>Birth Date:</label><br/>
                    <input type="date" name="txtUnitsInStock" id=""><br/>
                    <label>Hire Date (*):</label><br/>
                    <input type="date" name="txtUnitsInStock" id=""><br/>
                    <label>Gender:</label><br/>
                    <select name="ddlCategory">
                        <option value="catid1">Smart Phone</option>
                        <option value="catid2">Computer</option>
                    </select>
                    <br/> 
                </div>

                <input style="margin: auto;" type="submit" value="Save"/>

            </form>
        </div>
    </div>

</div>
<div id="content-right">
    <div class="path-admin">HOME MANAGERMENT</b></div>
    <div style="background-color: white;" class="content-main">
        <div class="msg"><strong>Hello Huy</strong><p>, you have a few tasks to handle!</p></div>
        <div class="info-homeadmin">
            <div class="info-homeadmin-left">
                <div style="font-style: italic; width: 100%; border-right: solid 1px black;" class="content-main-1">
                    <div><img style="width: 22%;border-radius: 50%;" src="https://i.pinimg.com/736x/4a/4c/29/4a4c29807499a1a8085e9bde536a570a.jpg" alt="">
                        <i class="fa-solid fa-pen"></i> <br>
                        <div><strong>Email</strong>: Deptraiqua@gmail.com</div>
                    </div>
                    <div><strong>Last Name</strong>: Huy</div>
                    <div><strong>First Name</strong>: Nguy?n</div>
                    <div><strong>Title</strong>: ??p trai</div>

                    <div><strong>Title Of Courtesy</strong>: </div>
                    <div><strong>Address</strong>: Th?ch Hòa, Th?ch Th?t, Hà N?i</div>
                    <div><strong>Department</strong>: Giám ??c</div>
                    <div><strong>Birth Date</strong>: 12/04/02</div>
                    <div><strong>Hire Date</strong>: 22/12/2022</div>
                    <div><strong>Gender</strong>: Boai</div>

                    <div><strong>Status</strong>: Active</div>
                    <button style="    padding: 3px;
                            border: solid 1px gray;
                            border-radius: 5px;
                            margin: 5px;
                            cursor: pointer;" id="myBtn">Update Profile <i class="fa-solid fa-pen"></i></button>
                </div>
            </div>
            <div class="info-homeadmin-right">
                <div class="div-square">
                    <h4>20</h4>
                    <p>ch? x? lý</p>
                </div>

                <div class="div-square">
                    <h4>20</h4>
                    <p>ch? x? lý</p>
                </div>


                <div class="div-square">
                    <h4>20</h4>
                    <p>ch? x? lý</p>
                </div>

                <div class="div-square">
                    <h4>20</h4>
                    <p>ch? x? lý</p>
                </div>

                <div class="div-square">
                    <h4>20</h4>
                    <p>ch? x? lý</p>
                </div>


                <div class="div-square">
                    <a href=""><h4>20</h4></a>
                    <p>ch? x? lý</p>
                </div>

            </div>
        </div>
    </div>
</div>
</div>

<div id="footer-admin">
    <p>Group 3 SE1639 - Online Shop</p>
</div>
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