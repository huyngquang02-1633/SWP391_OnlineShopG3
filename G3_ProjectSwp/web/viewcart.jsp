<%@include file="templates/header.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="<%=path%>/css/shopping-cart.css" rel="stylesheet" type="text/css"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <main id="tg-main page" class="tg-main tg-haslayout">
        <div class="tg-sectionspace tg-haslayout">
            <section class="shopping-cart dark">
                <div class="container">
                    <div class="py-5 text-center">
                        <h2 style="margin-top: -20px; margin-bottom: 100px;">My Cart</h2>
                    </div>
                    <c:if test="${msgOutOfStock!=null}"><div style="color: red; font-size: 20px;margin: 10px 0px; text-align: center;">${msgOutOfStock}</div></c:if>
                                                            <c:if test="${msgWrongDiscountID!=null}">${msgWrongDiscountID}</c:if>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-12 col-lg-8">
                                <div class="items">
                                    <c:forEach items="${cartList}" var="cartItem">
                                        <div class="product">
                                            <div class="row">
                                                <c:forEach items="${productList}" var="product">
                                                    <c:if test="${product.getProductID() == cartItem.getProductID()  }">
                                                        <div class="col-md-3">
                                                            <img class="img-fluid mx-auto d-block image" src="${product.getImage()}">
                                                        </div>
                                                    </c:if>
                                                </c:forEach>
                                                <div class="col-md-8">
                                                    <div class="info">
                                                        <div class="row">
                                                            <c:forEach items="${productList}" var="product">
                                                                <c:if test="${product.getProductID() == cartItem.getProductID()}">
                                                                    <div class="col-md-5 product-name">
                                                                        <div class="product-name">
                                                                            <a href="<%=path%>/productDetail?proID=${product.getProductID()}">${product.getProductName()}</a>
                                                                            <div class="product-info">
                                                                                <div>Language: <span class="value">${product.getLanguage()}</span></div>
                                                                                <div>Format: <span class="value">${product.getFormat()}</span></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                            <div class="col-md-4 quantity">
                                                                <label for="quantity">Quantity:</label>
                                                                <input id="quantity" type="number" min="1" value ="${cartItem.getQuantity()}" class="form-control quantity-input">
                                                            </div>
                                                            <c:forEach items="${productList}" var="product">
                                                                <c:if test="${product.getProductID() == cartItem.getProductID()}">

                                                                    <div class="col-md-3 price">
                                                                        <span>${product.getSalePrice()}</span>
                                                                        <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="col-md-12 col-lg-4">
                                <div class="summary">
                                    <h3>Summary</h3>
                                    <div class="summary-item"><span class="text">Subtotal</span><span class="price">$360</span></div>
                                    <div class="summary-item"><span class="text">Discount</span><span class="price">$0</span></div>
                                    <div class="summary-item"><span class="text">Shipping</span><span class="price">$0</span></div>
                                    <div class="summary-item"><span class="text">Total</span><span class="price">$360</span></div>
                                    <a class="tg-btn tg-btns tg-active" href="<%=path%>/checkout">
                                        <i class="fa fa-shopping-basket"></i>
                                        <em>Check out</em>
                                    </a>
                                </div>
                            </div>
                        </div> 
                    </div>
                    <!--                        <section class="h-100 h-custom">
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
</section>-->
                    <!--                    </div>-->
                </div>
            </section>
        </div>

    </main>

    <%@include file="templates/footer.jsp" %>
