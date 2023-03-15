<%@include file="templates/header.jsp" %>
<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<link rel="stylesheet" href="<%=path%>/css/profile.css">  

<div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="profile-nav col-md-3">
            <div class="panel">
                <div class="user-heading round">
                    <a href="#">
                        <img src="${AccCustomerSession.getImage().replace("=s96-c", "")}" alt="">
                    </a>
                    <h1>${userGoogle.getName()}</h1>
                    <p style="color: black;">${userGoogle.getEmail()}</p>

                </div>

                <ul class="nav nav-pills nav-stacked">
                    <li><a href="<%=path%>/account/profile"> <i class="fa fa-user"></i> Profile</a></li>
                    <li class="active"><a href="<%=path%>/account/profile_myOrder"> <i class="fa fa-calendar"></i> All Order <span class="label label-warning r-activity">9</span></a></li>
                    <li ><a href="<%=path%>/account/profile1"> <i class="fa fa-edit"></i> Edit profile</a></li>
                </ul>
            </div>
        </div>
        <div class="profile-info col-md-9">
            <div class="panel">
                <div class="bio-graph-heading">
                    My Orders
                </div>
                <div class="panel-body bio-graph-info">
                    <section class="gradient-custom">
                        <div class="row d-flex justify-content-center align-items-center">
                            <div>
                                <div class="card" style="border-radius: 10px;">
                                    <div class="card-body p-4">


                                        <div class="card shadow-0 border mb-4">
                                            <div class="col-12 odt-title d-flex">

                                                <span>OrderID: ${order.getOrderID()}</span>
                                                <span>Order date: ${order.getOrderDate()}</span>
                                                <c:choose>
                                                    <c:when test="${order.getRequiredDate()!=null && order.getShippedDate()!=null}"><span style="color: red;">Canceled</span></c:when>
                                                    <c:when test="${order.getRequiredDate()!=null && order.getShippedDate()==null}"><select id="selectS" name="ddlCategory">
                                                            <option value="catid1" style="color: blue;">Pending</option>
                                                            <option value="catid1" style="color: red;">Canceled</option>
                                                        </select></c:when>
                                                    <c:when test="${order.getRequiredDate()==null && order.getShippedDate()==null}"><span style="color: green;">Completed</span></c:when>
                                                    <c:when test=""><select id="selectS" name="ddlCategory">
                                                            <option value="catid1" style="color: blue;">Delivering</option>
                                                            <option value="catid1" style="color: rgb(22, 22, 22);">Refunding</option>
                                                            <option value="catid1" style="color: rgb(204, 201, 0);">Delivered</option>
                                                        </select></c:when>
                                                    <c:when test=""><select id="selectS" name="ddlCategory">
                                                            <option value="catid1" style="color: green">Approved</option>
                                                            <option value="catid1" style="color: red;">Canceled</option>
                                                        </select></c:when>

                                                </c:choose>
                                            </div>
                                            <c:forEach items="${orderDetailList}" var="odDetailList">
                                                <c:if test="${order.getOrderID() == odDetailList.getOrderID()}">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col-md-2">
                                                                <img style="width: 90%;" src="<%=path%>/images/books/img-04.jpg"
                                                                     class="img-fluid" alt="Phone">
                                                            </div>
                                                            <div style="padding: 8px;" class="col-md-4"><p style="margin-bottom: 15px;">ID: ${odDetailList.getProductID()}</p>
                                                                <p style="margin-bottom: 15px;">Vietnamese</p>
                                                                <p style="margin-bottom: 15px;">Qty: ${odDetailList.getQuantity()}</p>
                                                                <p style="margin-bottom: 0px">${odDetailList.getSalePrice()}</p>
                                                            </div>
                                                            <form>
                                                                <div class="col-md-6" style="display: flex; flex-wrap: wrap"> 
                                                                    <strong style="    margin-top: 5px;
                                                                            margin-right: 20px;    color: #555555;">Rating:</strong>
                                                                    <section id="rate" class="rating">
                                                                        <!-- FIFTH STAR -->
                                                                        <input type="radio" id="star_5" name="rate" value="5" />
                                                                        <label for="star_5" title="Five">&#9733;</label>
                                                                        <!-- FOURTH STAR -->
                                                                        <input type="radio" id="star_4" name="rate" value="4" />
                                                                        <label for="star_4" title="Four">&#9733;</label>
                                                                        <!-- THIRD STAR -->
                                                                        <input type="radio" id="star_3" name="rate" value="3" />
                                                                        <label for="star_3" title="Three">&#9733;</label>
                                                                        <!-- SECOND STAR -->
                                                                        <input type="radio" id="star_2" name="rate" value="2" />
                                                                        <label for="star_2" title="Two">&#9733;</label>
                                                                        <!-- FIRST STAR -->
                                                                        <input type="radio" id="star_1" name="rate" value="1" />
                                                                        <label for="star_1" title="One">&#9733;</label>
                                                                    </section>

                                                                    <div class="file-upload">
                                                                        <div class="file-select">
                                                                            <div class="file-select-button" id="fileName">Add image Review</div>
                                                                            <div class="file-select-name" id="noFile">No image chosen...</div> 
                                                                            <input type="file" name="chooseFile" id="chooseFile">
                                                                        </div>
                                                                    </div>

                                                                    <input style="    background: #eeeeee;
                                                                           width: 408px;
                                                                           height: 73px;
                                                                           position: relative;" type="text" placeholder="Enter your review"/>
                                                                    <input style="position: absolute;
                                                                           padding: 3px;
                                                                           bottom: 4px;
                                                                           right: 20px;
                                                                           width: 70px;
                                                                           border-radius: inherit;
                                                                           background: #ffa000;
                                                                           color: #393939;
                                                                           border-radius: 5px;" type="submit" value="Review" />
                                                                </div>
                                                            </form>

                                                        </div>
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                            <div class="card-footer" >
                                                <h5>Total paid: <span class="h2 mb-0 ms-2">$1040</span></h5>
                                                <div class="card-footer"></div>
                                            </div>
                                            <hr>
                                        </div>    

                                    </div>
                                </div>
                            </div>

                        </div>
                </div>
            </div>
        </div>
        </section>
    </div>

    <script>
        $('#chooseFile').bind('change', function () {
            var filename = $("#chooseFile").val();
            if (/^\s*$/.test(filename)) {
                $(".file-upload").removeClass('active');
                $("#noFile").text("No file chosen...");
            } else {
                $(".file-upload").addClass('active');
                $("#noFile").text(filename.replace("C:\\fakepath\\", ""));
            }
        });
    </script>

    <%@include file="templates/footer.jsp" %>
