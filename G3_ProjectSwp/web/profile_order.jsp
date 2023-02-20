<%@include file="templates/header.jsp" %>
<link rel="stylesheet" href="<%=path%>/css/profile.css">  
        <div class="container bootstrap snippets bootdey">
            <div class="row">
                <div class="profile-nav col-md-3">
                    <div class="panel">
                        <div class="user-heading round">
                            <a href="#">
                                <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
                            </a>
                            <h1>Camila Smith</h1>
                            <p>deydey@theEmail.com</p>
                        </div>

                        <ul class="nav nav-pills nav-stacked">
<<<<<<< HEAD
                            <li><a href="#"> <i class="fa fa-user"></i> Profile</a></li>
                            <li  class="active"><a href="#"> <i class="fa fa-calendar"></i> All Order <span class="label label-warning pull-right r-activity">9</span></a></li>
                            <li><a href="#"> <i class="fa fa-edit"></i> Edit profile</a></li>

=======

                            <li class="active"><a href="<%=path%>/account/profile"> <i class="fa fa-user"></i> Profile</a></li>
                            <li><a href="<%=path%>/account/profile_myOrder"> <i class="fa fa-calendar"></i> All Order <span class="label label-warning pull-right r-activity">9</span></a></li>
                            <li><a href="<%=path%>/account/profile"> <i class="fa fa-edit"></i> Edit profile</a></li>

                            <li><a href="#"> <i class="glyphicon glyphicon-plane"></i> Ship Address</a></li>
>>>>>>> 48bc278600b399a290241b3beed73c47ad790499
                        </ul>
                    </div>
                </div>
                <div class="profile-info col-md-9">
                    <section class="h-100 gradient-custom">
                        <div class="container py-5 h-100">
                            <div class="row d-flex justify-content-center align-items-center h-100">
                                <div class="col-lg-10 col-xl-8">
                                    <div class="card" style="border-radius: 10px;">
                                        <div class="bio-graph-heading">
                                            My Orders
                                        </div>
                                        <div class="card-body p-4">
                                            <c:forEach items="${orderList}" var="odList">

                                                <div class="card shadow-0 border mb-4" style="border: 1px solid grey; border-radius: 10px; margin-bottom: 20px;">
                                                    <div style="margin: 0px 0px 10px 0px; background-color: pink; padding: 10px; border-radius: 10px;" >

                                                        <span style="margin: 0px 100px 0px 0px;">OrderID: ${odList.getOrderID()}</span>
                                                        <span style="margin: 0px 100px;">Order date: ${odList.getOrderDate()}</span>
                                                        <c:choose>
                                                            <c:when test="${odList.getRequiredDate()!=null && odList.getShippedDate()!=null}"><span style="margin: 0px 100px; color: red;">Canceled</span></c:when>
                                                            <c:when test="${odList.getRequiredDate()!=null && odList.getShippedDate()==null}"><span style="margin: 0px 100px; color: blue;">Pending</span></c:when>
                                                            <c:when test="${odList.getRequiredDate()==null && odList.getShippedDate()==null}"><span style="margin: 0px 100px; color: green;">Completed</span></c:when>
                                                        </c:choose>
                                                    </div>
                                                    <c:forEach items="${orderDetailList}" var="odDetailList">
                                                        <c:if test="${odList.getOrderID() == odDetailList.getOrderID()}">
                                                            <div class="card-body">
                                                                <div class="row">
                                                                    <div class="col-md-2">

                                                                        <img src="<%=path%>/images/books/img-04.jpg"
                                                                             class="img-fluid" alt="Phone">
                                                                    </div>
                                                                    <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                        <p class="text-muted mb-0">ID: ${odDetailList.getProductID()}</p>
                                                                    </div>
                                                                    <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                        <p class="text-muted mb-0 small">Vietnamese</p>
                                                                    </div>
                                                                    <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                        <p class="text-muted mb-0 small"></p>

                                                                    </div>
                                                                    <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                        <p class="text-muted mb-0 small">Qty: ${odDetailList.getQuantity()}</p>
                                                                    </div>
                                                                    <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                                        <p class="text-muted mb-0 small">${odDetailList.getSalePrice()}</p>
                                                                    </div>
                                                                </div>
                                                                <hr class="mb-4" style="background-color: #e0e0e0; opacity: 1;">
                                                                <div class="row d-flex align-items-center">

                                                                </div>
                                                            </div>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>

                                            </c:forEach>


                                            <div class="d-flex justify-content-between pt-2">
                                                <p class="fw-bold mb-0">Order Details</p>
                                                <p class="text-muted mb-0"><span class="fw-bold me-4">Total</span> $898.00</p>
                                            </div>

                                            <div class="d-flex justify-content-between pt-2">
                                                <p class="text-muted mb-0">Invoice Number : 788152</p>
                                                <p class="text-muted mb-0"><span class="fw-bold me-4">Discount</span> $19.00</p>
                                            </div>

                                            <div class="d-flex justify-content-between">
                                                <p class="text-muted mb-0">Invoice Date : 22 Dec,2019</p>
                                                <p class="text-muted mb-0"><span class="fw-bold me-4">GST 18%</span> 123</p>
                                            </div>

                                            <div class="d-flex justify-content-between mb-5">
                                                <p class="text-muted mb-0">Recepits Voucher : 18KU-62IIK</p>
                                                <p class="text-muted mb-0"><span class="fw-bold me-4">Delivery Charges</span> Free</p>
                                            </div>
                                        </div>
                                        <div class="card-footer border-0 px-4 py-5"
                                             style="background-color: #a8729a; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                            <h5 class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">Total
                                                paid: <span class="h2 mb-0 ms-2">$1040</span></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>  
        <%@include file="templates/footer.jsp" %>