<%@include file="templates/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .content {
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
        background-color: white;
        padding: 30px;
    }
</style>
<p>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<%=path%>/js/countrystatecity.js?v2"></script>
</p>
<main id="tg-main page" class="tg-main tg-haslayout">
    <div class="tg-sectionspace tg-haslayout">
        <section class="shopping-cart dark">
            <div class="container">
                <div class="py-5 text-center">
                    <h2 style="margin-top: -20px; margin-bottom: 20px;">Checkout</h2>
                </div>
                <div class="content">
                    <div class="row">

                        <div class="col-md-8 order-md-1">
                            <h4 class="mb-3" style="font-weight: 600;">Billing address</h4>
                            <form action="<%=path%>/orderAction" class="needs-validation" novalidate>
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="fullName">Full name</label>
                                        <input type="text" class="form-control" name="txtReceiver" id="fullName" placeholder="" value="" required>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="phone">Number phone</label>
                                        <input type="tel" name="txtPhoneNumber" class="form-control" id="phone" placeholder="" value="" required>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="email">Email </label>
                                    <input type="email" name="txtEmail" class="form-control" id="email" placeholder="you@example.com">
                                </div>

                                <div class="mb-3">
                                    <label for="address">Address</label>
                                    <input type="text" name="txtAddress" class="form-control" id="address" placeholder="1234 Main St" required>
                                </div>

                                <div class="row">
                                    <div class="col-md-5 mb-3">
                                        <label for="country">Country</label>
                                        <select name="country" class="countries form-control" id="countryId">
                                            <option value="">Select Country</option>
                                        </select>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <label for="state" name="txtShipCity">City</label>
                                        <select name="state" class="states form-control" id="stateId">
                                            <option value="">Select City</option>
                                        </select>

                                    </div>
                                    <div class="col-md-3 mb-3">
                                        <label for="zip">District</label>
                                        <input type="text" class="form-control" id="district" placeholder="" required>

                                    </div>
                                </div>
                                <hr class="mb-4">

                                <h4 class="mb-3">Payment</h4>

                                <div class="d-block my-3">
                                    <div class="custom-control custom-radio">
                                        <input name="rbPaymentMethod" id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                        <label class="custom-control-label" for="credit">Cash on Delivery (COD)</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input name="rbPaymentMethod" id="credit" name="paymentMethod" type="radio" class="custom-control-input" disabled>
                                        <label class="custom-control-label" for="credit">Credit card</label>
                                    </div>
                                </div>
                                <hr class="mb-4">
                                <button class="tg-btn tg-btns tg-active" type="submit">Confirm to order</button>
                            </form>
                        </div>
                        <div class="col-md-4 order-md-2 mb-4">
                            <h4 class="d-flex justify-content-between align-items-center mb-3">
                                <span class="text-muted" style="font-weight: 600;">Your cart</span>
                                <span class="badge badge-secondary badge-pill"></span>
                            </h4>
                            <ul class="list-group mb-3">
                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                    <div>
                                        <h6 class="my-0">Product name</h6>
                                        <small class="text-muted">Brief description</small>
                                    </div>
                                    <span class="text-muted">$12</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                    <div>
                                        <h6 class="my-0">Second product</h6>
                                        <small class="text-muted">Brief description</small>
                                    </div>
                                    <span class="text-muted">$8</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                    <div>
                                        <h6 class="my-0">Third item</h6>
                                        <small class="text-muted">Brief description</small>
                                    </div>
                                    <span class="text-muted">$5</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between bg-light">
                                    <div class="text-success">
                                        <h6 class="my-0">Promo code</h6>
                                        <small>EXAMPLECODE</small>
                                    </div>
                                    <span class="text-success">-$5</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between">
                                    <span>Total (USD)</span>
                                    <strong>$20</strong>
                                </li>
                            </ul>

                            <form class="card p-2">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="txtDiscountID" placeholder="Promo code">
                                    <div class="input-group-append">
                                        <button type="submit" class="tg-btn tg-btns " style="background-color: lightgray">Redeem</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>
<%@include file="templates/footer.jsp" %>

