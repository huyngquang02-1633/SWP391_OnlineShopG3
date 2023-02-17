<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
              integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            .form-control,
            .btn {
                width: 50px;
                border-radius: 0;
                box-shadow: rgba(0, 0, 0, 0.02) 0px 1px 3px 0px,
                    rgba(27, 31, 35, 0.15) 0px 0px 0px 1px;
                border: none;
                outline: none;
            }

            @media (min-width: 1025px) {
                .h-custom {
                    height: 100vh !important;
                }
            }
        </style>
    </head>
    <body>
        <%@include file="templates/header.jsp" %>

        <!--************************************
                            Inner Banner Start
            *************************************-->
        <div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-innerbannercontent">
                            <h1>Cart</h1>
                            <ol class="tg-breadcrumb">
                                <li>Home</li>
                                <li class="tg-active">My Cart</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--************************************
                        Inner Banner End
        *************************************-->
        <main id="tg-main" class="tg-main tg-haslayout">
            <div class="tg-sectionspace tg-haslayout">
                <div class="container">
                    <div class="row">
                        <section class="h-100 h-custom">
                            <div class="container h-100 py-5">
                                <div class="row d-flex justify-content-center h-100">
                                    <div class="col">
                                        <div class="table-responsive">
                                            <table id="table" class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Image</th>
                                                        <th scope="col">Product</th>
                                                        <th scope="col">Quantity</th>
                                                        <th scope="col">Price</th>
                                                        <th scope="col">Discount</th>
                                                        <th scope="col">Tax</th>
                                                        <th scope="col">Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td scope="row">
                                                            <img src="https://st.quantrimang.com/photos/image/2018/10/10/may-anh-gia-re-duoc-danh-gia-cao-7.jpg"
                                                                 class="img-fluid" style="width: 120px" alt="Book" />
                                                        </td>

                                                        <td>
                                                            <div class="flex-column">
                                                                <p class="mb-2">MASSA AST</p>
                                                                <p class="mb-0">Color: black, Material: metal</p>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="d-flex flex-row">
                                                                <button class="btn btn-light px-2 btn-minus" onclick="miniusQuant(this);">
                                                                    <i class="fas fa-minus"></i>
                                                                </button>
                                                                <input id="form1" min="0" name="quantity" value="2" type="number"
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
                                                            <p class="mb-0">$120.00</p>
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

                                                    <tr>
                                                        <td scope="row">
                                                            <img src="https://toplist.vn/images/800px/canon-eos-m10-522883.jpg"
                                                                 class="img-fluid" style="width: 120px" alt="Book" />
                                                        </td>

                                                        <td>
                                                            <div class="flex-column">
                                                                <p class="mb-2">MASSA AST</p>
                                                                <p class="mb-0">Color: black, Material: metal</p>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="d-flex flex-row">
                                                                <button class="btn btn-light px-2 btn-minus" onclick="miniusQuant(this);">
                                                                    <i class="fas fa-minus"></i>
                                                                </button>
                                                                <input id="form1" min="0" name="quantity" value="2" type="number"
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
                                                            <p class="mb-0">$7.00</p>
                                                        </td>

                                                        <td>
                                                            <p class="mb-0">--</p>
                                                        </td>

                                                        <td>
                                                            <p class="mb-0"></p>
                                                        </td>

                                                        <td>
                                                            <p class="mb-0"></p>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td scope="row">
                                                            <img src="https://salt.tikicdn.com/cache/w1200/ts/product/3c/57/59/6c7ff53728a295a4f8219f18fcbba130.jpg"
                                                                 class="img-fluid" style="width: 120px" alt="Book" />
                                                        </td>

                                                        <td>
                                                            <div class="flex-column">
                                                                <p class="mb-2">MASSA AST</p>
                                                                <p class="mb-0">Color: black, Material: metal</p>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="d-flex flex-row">
                                                                <button class="btn btn-light px-2 btn-minus" onclick="miniusQuant(this);">
                                                                    <i class="fas fa-minus"></i>
                                                                </button>
                                                                <input id="form1" min="0" name="quantity" value="2" type="number"
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
                                                            <p class="mb-0">$120.00</p>
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
                                                 <textarea class="form-control" name="note" ></textarea>
                                                <button class="btn btn-success float-right"
                                                        type="submit">
                                                    Next
                                                </button>
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

        <script src="js/cart.js" type="text/javascript"></script>
    </body>
</html>
