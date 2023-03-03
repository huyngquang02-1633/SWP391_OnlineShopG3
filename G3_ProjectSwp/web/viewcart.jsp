<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
<%@include file="templates/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
        <main id="tg-main" class="tg-main tg-haslayout">
            <div class="tg-sectionspace tg-haslayout">
                <div class="container">
                    <div class="row">
                        <section class="h-100 h-custom">
                            <c:if test="${msgOutOfStock!=null}"><div style="color: red; font-size: 20px;margin: 10px 0px; text-align: center;">${msgOutOfStock}</div></c:if>
                            <div class="container h-100 py-5">
                                <div class="row d-flex justify-content-center h-100">
                                    <div class="col">
                                        <div class="table-responsive" style="border-radius: 10px;">
                                            <table id="table" class="table table-bordered" style="tr:nth-child(even) {background-color: #f2f2f2;}">
                                                <thead>
                                                    <tr style="background-color:  pink; padding: 10px;">
                                                        <th scope="col">Image</th>
                                                        <th scope="col">Product</th>
                                                        <th scope="col">Quantity</th>
                                                        <th scope="col">Price</th>
                                                        <th scope="col">Discount</th>
                                                        <th scope="col">Tax</th>
                                                        <th scope="col">Total</th>
                                                    </tr>
                                                </thead>

                                                <tbody id="ajax"> 
                                                    <c:forEach items="${cartList}" var="cartItem">
                                                        <tr>
                                                            <td scope="row">
                                                                <img src="<%=path%>/images/books/img-03.jpg"
                                                                     class="img-fluid" style="width: 120px" alt="Book" />
                                                            </td>
                                                            <td>
                                                                <div class="flex-column">
                                                                    <c:forEach items="${productList}" var="product">
                                                                        <c:if test="${product.getProductID() == cartItem.getProductID()  }">


                                                                            <p class="mb-2">${product.getProductName()}</p>
                                                                            <p class="mb-0">Format: ${product.getFormat()}, Genre: Business</p>


                                                                        </c:if>
                                                                    </c:forEach>
                                                                </div>
                                                            </td>

                                                            <td>
                                                                <div class="d-flex flex-row">
                                                                    <button class="btn btn-light px-2 btn-minus" onclick="miniusQuant(this);">
                                                                        <i class="fas fa-minus"></i>
                                                                    </button>
                                                                    <input id="form1" min="0" name="quantity" value="${cartItem.getQuantity()}" type="number"
                                                                           class="form-control form-control-sm" onchange="updateValue(this);" />

                                                                    <button class="btn btn-light px-2 btn-plus" onclick="plusQuant(this);">
                                                                        <i class="fas fa-plus"></i>
                                                                    </button>

                                                                    <button class="btn btn-danger px-2 btn-remove" onclick="deleteRow(this);">
                                                                        <i class="fas fa-xmark"></i>
                                                                    </button>
                                                                </div>
                                                            </td>

                                                            <td>
                                                                <c:forEach items="${productList}" var="product">
                                                                        <c:if test="${product.getProductID() == cartItem.getProductID()  }">
                                                                            <p class="mb-0">${product.getSalePrice()}</p>
                                                                        </c:if>
                                                                    </c:forEach>
                                                                
                                                            </td>

                                                            <td>
                                                                <p class="mb-0">$25.00</p>
                                                            </td>

                                                            <td>
                                                                <p class="mb-0"></p>
                                                            </td>

                                                            <td>
                                                                <p class="mb-0"></p>
                                                            </td>
                                                        </tr>

                                                    </c:forEach> 
                                                    

  

                                                    <tr>
                                                        <td class="text-end" scope="row" colspan="6">
                                                            <p class="mb-0">Total Discount:</p>
                                                        </td>

                                                        <td>
                                                            <p class="mb-0" id="totalDiscount"></p>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="text-end" scope="row" colspan="6">
                                                            <p class="mb-0">Total Tax:</p>
                                                        </td>

                                                        <td>
                                                            <p class="mb-0" id="totalTax"></p>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td class="text-end" scope="row" colspan="6">
                                                            <span class="mb-0"><b>Total Price:</b></span>
                                                        </td>

                                                        <td>
                                                            <b><span class="mb-0" id="totalPrice"></span></b>
                                                        </td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                            <div class="form-group">
                                                <form method="post" action="<%=path%>/orderAction" style="background-color:#c4e3f3 ; text-align: center; width: 55%; padding: 20px 0px; margin: auto auto; box-shadow: 1px 1px 1px 1px; border-radius: 10px;">
                                                    <div id="customer-info">
                                                        <div id="customer-info-content">
                                                            <h3 style="font-size: 35px; color: orange;"><b>Order INFORMATION</b></h3>
                                                            <div id="customer-info-detail">
                                                                <input type="text" placeholder="Receiver Name *" name="txtReceiver" style="width: 500px; margin-top: 30px;"/><br/>
                                                                    <input type="text" placeholder="Email *" name="txtEmail" style="width: 500px; margin-top: 30px;"/><br/>
                                                                    <input type="text" placeholder="Phone Number *" name="txtPhoneNumber" style="width: 500px; margin-top: 30px;"/><br/>
                                                                    <input type="text" placeholder="Address *" name="txtAddress" style="width: 500px; margin-top: 30px;"/><br/>
                                                                    <input type="text" placeholder="Ship City *" name="txtShipCity" style="width: 500px; margin-top: 30px;"/><br/>
                                                                    <input type="text" placeholder="Voucher ID" name="txtDiscountID" style="width: 500px; margin-top: 30px;"/><br/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="customer-info">
                                                        <div id="customer-info-content">
                                                            <h3 style="margin-top: 20px;">PAYMENT METHODS:</h3>
                                                            <div id="customer-info-payment">
                                                                <div>
                                                                    <input style="margin-top: 20px;" type="radio" name="rbPaymentMethod" checked/>
                                                                    Payment C.O.D - Payment on delivery
                                                                </div>
                                                                <div>
                                                                    <input style="margin-top: 20px;" type="radio" name="rbPaymentMethod" disabled/>
                                                                    Payment via online payment gateway
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <button style="margin-top: 20px;" class="btn btn-success float-right" style="width: 100px;"
                                                        type="submit">
                                                        Order
                                                    </button>
                                                    
                                                </form>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </section>
                    </div>
                </div>
            </div>

        </main>

    <%@include file="templates/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
            integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <%
        String pathh = request.getContextPath();
    %>
    <script src="<%=pathh%>/js/cart.js" type="text/javascript"></script>
