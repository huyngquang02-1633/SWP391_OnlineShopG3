<%@include file="templates/header.jsp" %>
<link rel="stylesheet" href="<%=path%>/css/profile.css">  

<div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="profile-nav col-md-3">
            <div class="panel">
                <div class="user-heading round">
                    <a href="#">
                        <img src="${userGoogle.getPicture().replace("=s96-c", "")}" alt="">
                    </a>
                    <h1>Camila Smith</h1>
                    <p>deydey@theEmail.com</p>

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
                                        <c:forEach items="${orderList}" var="odList">

                                            <div class="card shadow-0 border mb-4">
                                                <div class="col-12 odt-title d-flex">

                                                    <span>OrderID: ${odList.getOrderID()}</span>
                                                    <span>Order date: ${odList.getOrderDate()}</span>
                                                    <c:choose>
                                                        <c:when test="${odList.getRequiredDate()!=null && odList.getShippedDate()!=null}"><span style="color: red;">Canceled</span></c:when>
                                                        <c:when test="${odList.getRequiredDate()!=null && odList.getShippedDate()==null}"><span style="color: blue;">Pending</span></c:when>
                                                        <c:when test="${odList.getRequiredDate()==null && odList.getShippedDate()==null}"><span style="color: green;">Completed</span></c:when>
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
                                                        </div>
                                                    </c:if>
                                                </c:forEach>
                                                <div class="card-footer"
                                                     style="background-color: #a8729a;">
                                                    <h5>Total
                                                        paid: <span class="h2 mb-0 ms-2">$1040</span></h5>
                                                </div>
                                            </div>

                                        </c:forEach>


                                    </div>
                                </div>
                            </div>

                        </div>
                </div>
            </div>
        </div>
        </section>
    </div>

    <%@include file="templates/footer.jsp" %>