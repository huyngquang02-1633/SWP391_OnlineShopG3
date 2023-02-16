<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <%
            String path = request.getContextPath();
        %>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Book Library</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%=path%>/css/normalize.css">
        <link rel="stylesheet" href="<%=path%>/css/font-awesome.min.css">
        <link rel="stylesheet" href="<%=path%>/css/icomoon.css">
        <link rel="stylesheet" href="<%=path%>/css/jquery-ui.css">
        <link rel="stylesheet" href="<%=path%>/css/owl.carousel.css">
        <link rel="stylesheet" href="<%=path%>/css/transitions.css">
        <link rel="stylesheet" href="<%=path%>/css/main.css">
        <link rel="stylesheet" href="<%=path%>/css/color.css">
        <link rel="stylesheet" href="<%=path%>/css/responsive.css">
        <link rel="stylesheet" href="<%=path%>/css/profile.css">
        <link href="<%=path%>/css/styles.css" rel="stylesheet" type="text/css"/>
        <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://accounts.google.com/gsi/client" async defer></script>

    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous"
            src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v16.0&appId=718155789958513&autoLogAppEvents=1"
    nonce="LpjM0yAZ"></script>

    <script src="<%=path%>/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
    <header id="tg-header" class="tg-header tg-haslayout">
        <div class="tg-topbar">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ul class="tg-addnav">
                            <li>
                                <a href="contactus.jsp">
                                    <i class="icon-envelope"></i>
                                    <em>Contact</em>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">
                                    <i class="icon-question-circle"></i>
                                    <em>Help</em>
                                </a>
                            </li>
                        </ul>

                        <div class="tg-userlogin">
                            <img src="images/users/icon-user.png" width="50" height="50" style=" border-radius: 50%" alt="" >
                            <a data-toggle="modal" data-target="#panel-modal2" style="text-decoration:none; color: #454545">Login</a>

                            <div class="modal modal-nutrition full-height from-right" id="panel-modal2" tabindex="-1" role="dialog"
                                 aria-hidden="true">
                                <div id="modal" class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <div class="login_wrapper">
                                                <div class="text-center social-btn">
                                                    <div class="fb-login-button" data-width="" data-size="large" data-button-type="continue_with"
                                                         data-layout="default" data-auto-logout-link="false" data-use-continue-as="false"
                                                         scope="public_profile,email" onlogin="checkLoginState();" id="facebooklogin"></div>
                                                    <div id="g_id_onload"
                                                         data-client_id="1050564579754-430rd5eoroffdc7umpogphsqmbvhj9es.apps.googleusercontent.com"
                                                         data-context="signin" data-ux_mode="popup" data-callback="handleCredentialResponse"
                                                         data-auto_prompt="false">
                                                    </div>

                                                    <div class="g_id_signin" data-type="standard" data-shape="rectangular" data-theme="outline"
                                                         data-text="signin_with" data-size="large" data-logo_alignment="left" type="submit">
                                                    </div>
                                                </div>
                                                <h2>or</h2>
                                                <div class="formsix-pos">
                                                    <div class="form-group i-email">
                                                        <input type="email" class="form-control" required="" id="email2" placeholder="Email Address *">
                                                    </div>
                                                </div>
                                                <div class="formsix-e">
                                                    <div class="form-group i-password">
                                                        <input type="password" class="form-control" required="" id="password2" placeholder="Password *">
                                                    </div>
                                                </div>
                                                <div class="login_remember_box">
                                                    <label class="control control--checkbox">Remember me
<!--                                                        <input type="checkbox">-->
<!--                                                        <div class="control__indicator"></div>-->
                                                    </label>
                                                    <a href="#" class="forget_password">
                                                        Forgot Password
                                                    </a>
                                                </div>
                                                <div class="login_btn_wrapper">
                                                    <a href="#" class="btn btn-primary login_btn"> Login </a>
                                                </div>
                                                <div class="login_message">
                                                    <p>Don&rsquo;t have an account ? <a href="#"> Sign up </a> </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-middlecontainer">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <strong class="tg-logo"><a href="index.jsp"><img src="<%=path%>/images/logo.png"
                                                                         alt="company name here"></a></strong>
                        <div class="tg-wishlistandcart">
                            <div class="dropdown tg-themedropdown tg-wishlistdropdown">
                                <a href="javascript:void(0);" id="tg-wishlisst" class="tg-btnthemedropdown"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="tg-themebadge">3</span>
                                    <i class="icon-heart"></i>
                                    <span>Wishlist</span>
                                </a>
                                <div class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-wishlisst">
                                    <div class="tg-description">
                                        <p>No products were added to the wishlist!</p>
                                    </div>
                                </div>
                            </div>
                            <div class="dropdown tg-themedropdown tg-minicartdropdown">
                                <a href="javascript:void(0);" id="tg-minicart" class="tg-btnthemedropdown"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="tg-themebadge">3</span>
                                    <i class="icon-cart"></i>
                                    <span>$123.00</span>
                                </a>
                                <div class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-minicart">
                                    <div class="tg-minicartbody">
                                        <div class="tg-minicarproduct">
                                            <figure>
                                                <img src="images/products/img-01.jpg" alt="image description">

                                            </figure>
                                            <div class="tg-minicarproductdata">
                                                <h5><a href="javascript:void(0);">Our State Fair Is A Great
                                                        Function</a></h5>
                                                <h6><a href="javascript:void(0);">$ 12.15</a></h6>
                                            </div>
                                        </div>
                                        <div class="tg-minicarproduct">
                                            <figure>
                                                <img src="<%=path%>/images/products/img-02.jpg" alt="image description">

                                            </figure>
                                            <div class="tg-minicarproductdata">
                                                <h5><a href="javascript:void(0);">Bring Me To Light</a></h5>
                                                <h6><a href="javascript:void(0);">$ 12.15</a></h6>
                                            </div>
                                        </div>
                                        <div class="tg-minicarproduct">
                                            <figure>
                                                <img src="images/products/img-03.jpg" alt="image description">

                                            </figure>
                                            <div class="tg-minicarproductdata">
                                                <h5><a href="javascript:void(0);">Have Faith In Your Soul</a></h5>
                                                <h6><a href="javascript:void(0);">$ 12.15</a></h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tg-minicartfoot">
                                        <a class="tg-btnemptycart" href="javascript:void(0);">
                                            <i class="fa fa-trash-o"></i>
                                            <span>Clear Your Cart</span>
                                        </a>
                                        <span class="tg-subtotal">Subtotal: <strong>35.78</strong></span>
                                        <div class="tg-btns">
                                            <a class="tg-btn tg-active" href="javascript:void(0);">View Cart</a>
                                            <a class="tg-btn" href="javascript:void(0);">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tg-searchbox">
                            <form class="tg-formtheme tg-formsearch">
                                <fieldset>
                                    <input type="text" name="search" class="typeahead form-control"
                                           placeholder="Search by Title, Author, Keyword, ISBN">
                                    <button type="submit"><i class="icon-magnifier"></i></button>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-navigationarea">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <nav id="tg-nav" class="tg-nav">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                        data-target="#tg-navigation" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div id="tg-navigation" class="collapse navbar-collapse tg-navigation">
                                <ul>
                                    <li><a href="index.jsp">Home</a></li>
                                    <li class="menu-item-has-children menu-item-has-mega-menu">
                                        <a href="javascript:void(0);">All Categories</a>
                                        <div class="mega-menu">
                                            <ul class="tg-themetabnav" role="tablist">
                                                <li role="presentation" class="active">
                                                    <a href="#artandphotography" aria-controls="artandphotography"
                                                       role="tab" data-toggle="tab">Art &amp; Photography</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#biography" aria-controls="biography" role="tab"
                                                       data-toggle="tab">Biography</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#childrensbook" aria-controls="childrensbook"
                                                       role="tab" data-toggle="tab">Childrenâs Book</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#craftandhobbies" aria-controls="craftandhobbies"
                                                       role="tab" data-toggle="tab">Craft &amp; Hobbies</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#crimethriller" aria-controls="crimethriller"
                                                       role="tab" data-toggle="tab">Crime &amp; Thriller</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#fantasyhorror" aria-controls="fantasyhorror"
                                                       role="tab" data-toggle="tab">Fantasy &amp; Horror</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#fiction" aria-controls="fiction" role="tab"
                                                       data-toggle="tab">Fiction</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#fooddrink" aria-controls="fooddrink" role="tab"
                                                       data-toggle="tab">Food &amp; Drink</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#graphicanimemanga" aria-controls="graphicanimemanga"
                                                       role="tab" data-toggle="tab">Graphic, Anime &amp; Manga</a>
                                                </li>
                                                <li role="presentation">
                                                    <a href="#sciencefiction" aria-controls="sciencefiction"
                                                       role="tab" data-toggle="tab">Science Fiction</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content tg-themetabcontent">
                                                <div role="tabpanel" class="tab-pane active" id="artandphotography">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/images/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="biography">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/images/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="childrensbook">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/images/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="craftandhobbies">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/images/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="crimethriller">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/images/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="fantasyhorror">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/images/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="fiction">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/images/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="fooddrink">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/images/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="graphicanimemanga">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/images/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="sciencefiction">
                                                    <ul>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Architecture</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Tough As Nails</a></li>
                                                                <li><a href="products.jsp">Pro Grease Monkey</a>
                                                                </li>
                                                                <li><a href="products.jsp">Building Memories</a>
                                                                </li>
                                                                <li><a href="products.jsp">Bulldozer Boyz</a></li>
                                                                <li><a href="products.jsp">Build Or Leave On Us</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>Art Forms</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Consectetur
                                                                        adipisicing</a></li>
                                                                <li><a href="products.jsp">Aelit sed do eiusmod</a>
                                                                </li>
                                                                <li><a href="products.jsp">Tempor incididunt
                                                                        labore</a></li>
                                                                <li><a href="products.jsp">Dolore magna aliqua</a>
                                                                </li>
                                                                <li><a href="products.jsp">Ut enim ad minim</a>
                                                                </li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                        <li>
                                                            <div class="tg-linkstitle">
                                                                <h2>History</h2>
                                                            </div>
                                                            <ul>
                                                                <li><a href="products.jsp">Veniam quis nostrud</a>
                                                                </li>
                                                                <li><a href="products.jsp">Exercitation</a></li>
                                                                <li><a href="products.jsp">Laboris nisi ut
                                                                        aliuip</a></li>
                                                                <li><a href="products.jsp">Commodo conseat</a></li>
                                                                <li><a href="products.jsp">Duis aute irure</a></li>
                                                            </ul>
                                                            <a class="tg-btnviewall" href="products.jsp">View
                                                                All</a>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>
                                                            <figure><img src="<%=path%>/s/img-01.png"
                                                                         alt="image description"></figure>
                                                            <div class="tg-textbox">
                                                                <h3>More Than<span>12,0657,53</span>Books Collection
                                                                </h3>
                                                                <div class="tg-description">
                                                                    <p>Consectetur adipisicing elit sed doe eiusmod
                                                                        tempor incididunt laebore toloregna aliqua
                                                                        enim.</p>
                                                                </div>
                                                                <a class="tg-btn" href="products.jsp">view all</a>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li><a href="products.jsp">Best Selling</a></li>
                                    <li><a href="products.jsp">Weekly Sale</a></li>
                                    <li><a href="authors.jsp">Authors</a></li>


                                    <li><a href="contactus.jsp">Contact</a></li>
                                    <li><a href="aboutus.jsp">About Us</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--************************************
                    Header End
    *************************************-->

    <!--************************************
                    Carousel Start
    *************************************-->

    <section id="carousel">
        <div id="Advertising" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#Advertising" data-slide-to="0" class="active"></li>
                <li data-target="#Advertising" data-slide-to="1"></li>
            </ol>
            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/carousel-1.jpg" alt="Advertising">
                </div>
                <div class="item">
                    <img src="images/carousel-2.jpg" alt="Advertising">
                </div>
            </div>
        </div>
    </section>

    <!--************************************
                            Carousel End
            *************************************-->
    <main>
        <!--************************************
                        Best Selling Start
        *************************************-->
        <section class="tg-sectionspace tg-haslayout">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead">
                            <h2><span>People's Choice</span>Bestselling Books</h2>
                            <a class="tg-btn" href="javascript:void(0);">View All</a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div id="tg-bestsellingbooksslider"
                             class="tg-bestsellingbooksslider tg-bestsellingbooks owl-carousel">
                            <div class="item">
                                <div class="tg-postbook">
                                    <figure class="tg-featureimg">
                                        <div class="tg-bookimg">
                                            <div class="tg-frontcover"><img src="images/books/img-01.jpg"
                                                                            alt="image description"></div>
                                            <div class="tg-backcover"><img src="images/books/img-01.jpg"
                                                                           alt="image description"></div>
                                        </div>
                                        <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                            <i class="icon-heart"></i>
                                            <span>add to wishlist</span>
                                        </a>
                                    </figure>
                                    <div class="tg-postbookcontent">
                                        <ul class="tg-bookscategories">
                                            <li><a href="javascript:void(0);">Adventure</a></li>
                                            <li><a href="javascript:void(0);">Fun</a></li>
                                        </ul>
                                        <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                        <div class="tg-booktitle">
                                            <h3><a href="javascript:void(0);">Help Me Find My Stomach</a></h3>
                                        </div>
                                        <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela
                                                Gunning</a></span>
                                        <span class="tg-stars"><span></span></span>
                                        <span class="tg-bookprice">
                                            <ins>$25.18</ins>
                                            <del>$27.20</del>
                                        </span>
                                        <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Add To Basket</em>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="tg-postbook">
                                    <figure class="tg-featureimg">
                                        <div class="tg-bookimg">
                                            <div class="tg-frontcover"><img src="images/books/img-02.jpg"
                                                                            alt="image description"></div>
                                            <div class="tg-backcover"><img src="images/books/img-02.jpg"
                                                                           alt="image description"></div>
                                        </div>
                                        <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                            <i class="icon-heart"></i>
                                            <span>add to wishlist</span>
                                        </a>
                                    </figure>
                                    <div class="tg-postbookcontent">
                                        <ul class="tg-bookscategories">
                                            <li><a href="javascript:void(0);">Adventure</a></li>
                                            <li><a href="javascript:void(0);">Fun</a></li>
                                        </ul>
                                        <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                        <div class="tg-booktitle">
                                            <h3><a href="javascript:void(0);">Drive Safely, No Bumping</a></h3>
                                        </div>
                                        <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela
                                                Gunning</a></span>
                                        <span class="tg-stars"><span></span></span>
                                        <span class="tg-bookprice">
                                            <ins>$25.18</ins>
                                            <del>$27.20</del>
                                        </span>
                                        <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Add To Basket</em>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="tg-postbook tg-notag">
                                    <figure class="tg-featureimg">
                                        <div class="tg-bookimg">
                                            <div class="tg-frontcover"><img src="images/books/img-03.jpg"
                                                                            alt="image description"></div>
                                            <div class="tg-backcover"><img src="images/books/img-03.jpg"
                                                                           alt="image description"></div>
                                        </div>
                                        <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                            <i class="icon-heart"></i>
                                            <span>add to wishlist</span>
                                        </a>
                                    </figure>
                                    <div class="tg-postbookcontent">
                                        <ul class="tg-bookscategories">
                                            <li><a href="javascript:void(0);">Adventure</a></li>
                                            <li><a href="javascript:void(0);">Fun</a></li>
                                        </ul>
                                        <div class="tg-booktitle">
                                            <h3><a href="javascript:void(0);">Let The Good Times Roll Up</a></h3>
                                        </div>
                                        <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela
                                                Gunning</a></span>
                                        <span class="tg-stars"><span></span></span>
                                        <span class="tg-bookprice">
                                            <ins>$25.18</ins>
                                            <del>$27.20</del>
                                        </span>
                                        <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Add To Basket</em>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="tg-postbook">
                                    <figure class="tg-featureimg">
                                        <div class="tg-bookimg">
                                            <div class="tg-frontcover"><img src="images/books/img-04.jpg"
                                                                            alt="image description"></div>
                                            <div class="tg-backcover"><img src="images/books/img-04.jpg"
                                                                           alt="image description"></div>
                                        </div>
                                        <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                            <i class="icon-heart"></i>
                                            <span>add to wishlist</span>
                                        </a>
                                    </figure>
                                    <div class="tg-postbookcontent">
                                        <ul class="tg-bookscategories">
                                            <li><a href="javascript:void(0);">Adventure</a></li>
                                            <li><a href="javascript:void(0);">Fun</a></li>
                                        </ul>
                                        <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                        <div class="tg-booktitle">
                                            <h3><a href="javascript:void(0);">Our State Fair Is A Great State
                                                    Fair</a>
                                            </h3>
                                        </div>
                                        <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela
                                                Gunning</a></span>
                                        <span class="tg-stars"><span></span></span>
                                        <span class="tg-bookprice">
                                            <ins>$25.18</ins>
                                            <del>$27.20</del>
                                        </span>
                                        <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Add To Basket</em>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="tg-postbook tg-notag">
                                    <figure class="tg-featureimg">
                                        <div class="tg-bookimg">
                                            <div class="tg-frontcover"><img src="images/books/img-05.jpg"
                                                                            alt="image description"></div>
                                            <div class="tg-backcover"><img src="images/books/img-05.jpg"
                                                                           alt="image description"></div>
                                        </div>
                                        <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                            <i class="icon-heart"></i>
                                            <span>add to wishlist</span>
                                        </a>
                                    </figure>
                                    <div class="tg-postbookcontent">
                                        <ul class="tg-bookscategories">
                                            <li><a href="javascript:void(0);">Adventure</a></li>
                                            <li><a href="javascript:void(0);">Fun</a></li>
                                        </ul>
                                        <div class="tg-booktitle">
                                            <h3><a href="javascript:void(0);">Put The Petal To The Metal</a></h3>
                                        </div>
                                        <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela
                                                Gunning</a></span>
                                        <span class="tg-stars"><span></span></span>
                                        <span class="tg-bookprice">
                                            <ins>$25.18</ins>
                                            <del>$27.20</del>
                                        </span>
                                        <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Add To Basket</em>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="tg-postbook">
                                    <figure class="tg-featureimg">
                                        <div class="tg-bookimg">
                                            <div class="tg-frontcover"><img src="images/books/img-06.jpg"
                                                                            alt="image description"></div>
                                            <div class="tg-backcover"><img src="images/books/img-06.jpg"
                                                                           alt="image description"></div>
                                        </div>
                                        <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                            <i class="icon-heart"></i>
                                            <span>add to wishlist</span>
                                        </a>
                                    </figure>
                                    <div class="tg-postbookcontent">
                                        <ul class="tg-bookscategories">
                                            <li><a href="javascript:void(0);">Adventure</a></li>
                                            <li><a href="javascript:void(0);">Fun</a></li>
                                        </ul>
                                        <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                        <div class="tg-booktitle">
                                            <h3><a href="javascript:void(0);">Help Me Find My Stomach</a></h3>
                                        </div>
                                        <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela
                                                Gunning</a></span>
                                        <span class="tg-stars"><span></span></span>
                                        <span class="tg-bookprice">
                                            <ins>$25.18</ins>
                                            <del>$27.20</del>
                                        </span>
                                        <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Add To Basket</em>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="tg-postbook tg-notag">
                                    <figure class="tg-featureimg">
                                        <div class="tg-bookimg">
                                            <div class="tg-frontcover"><img src="images/books/img-03.jpg"
                                                                            alt="image description"></div>
                                            <div class="tg-backcover"><img src="images/books/img-03.jpg"
                                                                           alt="image description"></div>
                                        </div>
                                        <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                            <i class="icon-heart"></i>
                                            <span>add to wishlist</span>
                                        </a>
                                    </figure>
                                    <div class="tg-postbookcontent">
                                        <ul class="tg-bookscategories">
                                            <li><a href="javascript:void(0);">Adventure</a></li>
                                            <li><a href="javascript:void(0);">Fun</a></li>
                                        </ul>
                                        <div class="tg-booktitle">
                                            <h3><a href="javascript:void(0);">Let The Good Times Roll Up</a></h3>
                                        </div>
                                        <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela
                                                Gunning</a></span>
                                        <span class="tg-stars"><span></span></span>
                                        <span class="tg-bookprice">
                                            <ins>$25.18</ins>
                                            <del>$27.20</del>
                                        </span>
                                        <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Add To Basket</em>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--************************************
                        Best Selling End
        *************************************-->

        <!--************************************
                        Featured Item Start
        *************************************-->
        <section class="tg-bglight tg-haslayout">
            <div class="container">
                <div class="row">
                    <div class="tg-featureditm">
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 hidden-sm hidden-xs">
                            <figure><img src="images/img-02.png" alt="image description"></figure>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                            <div class="tg-featureditmcontent">
                                <div class="tg-themetagbox"><span class="tg-themetag">featured</span></div>
                                <div class="tg-booktitle">
                                    <h3><a href="javascript:void(0);">Things To Know About Green Flat Design</a>
                                    </h3>
                                </div>
                                <span class="tg-bookwriter">By: <a href="javascript:void(0);">Farrah
                                        Whisenhunt</a></span>
                                <span class="tg-stars"><span></span></span>
                                <div class="tg-priceandbtn">
                                    <span class="tg-bookprice">
                                        <ins>$23.18</ins>
                                        <del>$30.20</del>
                                    </span>
                                    <a class="tg-btn tg-btnstyletwo tg-active" href="javascript:void(0);">
                                        <i class="fa fa-shopping-basket"></i>
                                        <em>Add To Basket</em>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--************************************
                        Featured Item End
        *************************************-->
        <!--************************************
                        New Release Start
        *************************************-->
        <section class="tg-sectionspace tg-haslayout">
            <div class="container">
                <div class="row">
                    <div class="tg-newrelease">
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="tg-sectionhead">
                                <h2><span>Taste The New Spice</span>New Release Books</h2>
                            </div>
                            <div class="tg-description">
                                <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore toloregna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamcoiars nisiuip
                                    commodo consequat aute irure dolor in aprehenderit aveli esseati cillum dolor
                                    fugiat
                                    nulla pariatur cepteur sint occaecat cupidatat.</p>
                            </div>
                            <div class="tg-btns">
                                <a class="tg-btn tg-active" href="javascript:void(0);">View All</a>
                                <a class="tg-btn" href="javascript:void(0);">Read More</a>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                            <div class="row">
                                <div class="tg-newreleasebooks">
                                    <div class="col-xs-4 col-sm-4 col-md-6 col-lg-4">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-07.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-07.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>add to wishlist</span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Adventure</a></li>
                                                    <li><a href="javascript:void(0);">Fun</a></li>
                                                </ul>
                                                <div class="tg-booktitle">
                                                    <h3><a href="javascript:void(0);">Help Me Find My Stomach</a>
                                                    </h3>
                                                </div>
                                                <span class="tg-bookwriter">By: <a
                                                        href="javascript:void(0);">Kathrine
                                                        Culbertson</a></span>
                                                <span class="tg-stars"><span></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-6 col-lg-4">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-08.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-08.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>add to wishlist</span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Adventure</a></li>
                                                    <li><a href="javascript:void(0);">Fun</a></li>
                                                </ul>
                                                <div class="tg-booktitle">
                                                    <h3><a href="javascript:void(0);">Drive Safely, No Bumping</a>
                                                    </h3>
                                                </div>
                                                <span class="tg-bookwriter">By: <a
                                                        href="javascript:void(0);">Sunshine
                                                        Orlando</a></span>
                                                <span class="tg-stars"><span></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-4 col-sm-4 col-md-3 col-lg-4 hidden-md">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="images/books/img-09.jpg"
                                                                                    alt="image description"></div>
                                                    <div class="tg-backcover"><img src="images/books/img-09.jpg"
                                                                                   alt="image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>add to wishlist</span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Adventure</a></li>
                                                    <li><a href="javascript:void(0);">Fun</a></li>
                                                </ul>
                                                <div class="tg-booktitle">
                                                    <h3><a href="javascript:void(0);">Let The Good Times Roll Up</a>
                                                    </h3>
                                                </div>
                                                <span class="tg-bookwriter">By: <a
                                                        href="javascript:void(0);">Elisabeth
                                                        Ronning</a></span>
                                                <span class="tg-stars"><span></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--************************************
                        New Release End
        *************************************-->

        <!--************************************
                        Picked By Author Start
        *************************************-->
        <section class="tg-sectionspace tg-haslayout">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead">
                            <h2><span>Some Great Books</span>Picked By Authors</h2>
                            <a class="tg-btn" href="javascript:void(0);">View All</a>
                        </div>
                    </div>
                    <div id="tg-pickedbyauthorslider"
                         class="tg-pickedbyauthor tg-pickedbyauthorslider owl-carousel">
                        <div class="item">
                            <div class="tg-postbook">
                                <figure class="tg-featureimg">
                                    <div class="tg-bookimg">
                                        <div class="tg-frontcover"><img src="images/books/img-10.jpg"
                                                                        alt="image description"></div>
                                    </div>
                                    <div class="tg-hovercontent">
                                        <div class="tg-description">
                                            <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore
                                                toloregna aliqua enim adia minim veniam, quis nostrud.</p>
                                        </div>
                                        <strong class="tg-bookpage">Book Pages: 206</strong>
                                        <strong class="tg-bookcategory">Category: Adventure, Fun</strong>
                                        <strong class="tg-bookprice">Price: $23.18</strong>
                                        <div class="tg-ratingbox"><span class="tg-stars"><span></span></span></div>
                                    </div>
                                </figure>
                                <div class="tg-postbookcontent">
                                    <div class="tg-booktitle">
                                        <h3><a href="javascript:void(0);">Seven Minutes In Heaven</a></h3>
                                    </div>
                                    <span class="tg-bookwriter">By: <a href="javascript:void(0);">Sunshine
                                            Orlando</a></span>
                                    <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                        <i class="fa fa-shopping-basket"></i>
                                        <em>Add To Basket</em>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="tg-postbook">
                                <figure class="tg-featureimg">
                                    <div class="tg-bookimg">
                                        <div class="tg-frontcover"><img src="images/books/img-11.jpg"
                                                                        alt="image description"></div>
                                    </div>
                                    <div class="tg-hovercontent">
                                        <div class="tg-description">
                                            <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore
                                                toloregna aliqua enim adia minim veniam, quis nostrud.</p>
                                        </div>
                                        <strong class="tg-bookpage">Book Pages: 206</strong>
                                        <strong class="tg-bookcategory">Category: Adventure, Fun</strong>
                                        <strong class="tg-bookprice">Price: $23.18</strong>
                                        <div class="tg-ratingbox"><span class="tg-stars"><span></span></span></div>
                                    </div>
                                </figure>
                                <div class="tg-postbookcontent">
                                    <div class="tg-booktitle">
                                        <h3><a href="javascript:void(0);">Slow And Steady Wins The Race</a></h3>
                                    </div>
                                    <span class="tg-bookwriter">By: <a href="javascript:void(0);">Drusilla
                                            Glandon</a></span>
                                    <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                        <i class="fa fa-shopping-basket"></i>
                                        <em>Add To Basket</em>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="tg-postbook">
                                <figure class="tg-featureimg">
                                    <div class="tg-bookimg">
                                        <div class="tg-frontcover"><img src="images/books/img-12.jpg"
                                                                        alt="image description"></div>
                                    </div>
                                    <div class="tg-hovercontent">
                                        <div class="tg-description">
                                            <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore
                                                toloregna aliqua enim adia minim veniam, quis nostrud.</p>
                                        </div>
                                        <strong class="tg-bookpage">Book Pages: 206</strong>
                                        <strong class="tg-bookcategory">Category: Adventure, Fun</strong>
                                        <strong class="tg-bookprice">Price: $23.18</strong>
                                        <div class="tg-ratingbox"><span class="tg-stars"><span></span></span></div>
                                    </div>
                                </figure>
                                <div class="tg-postbookcontent">
                                    <div class="tg-booktitle">
                                        <h3><a href="javascript:void(0);">Thereâs No Time Like The Present</a></h3>
                                    </div>
                                    <span class="tg-bookwriter">By: <a href="javascript:void(0);">Patrick
                                            Seller</a></span>
                                    <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                        <i class="fa fa-shopping-basket"></i>
                                        <em>Add To Basket</em>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="tg-postbook">
                                <figure class="tg-featureimg">
                                    <div class="tg-bookimg">
                                        <div class="tg-frontcover"><img src="images/books/img-10.jpg"
                                                                        alt="image description"></div>
                                    </div>
                                    <div class="tg-hovercontent">
                                        <div class="tg-description">
                                            <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore
                                                toloregna aliqua enim adia minim veniam, quis nostrud.</p>
                                        </div>
                                        <strong class="tg-bookpage">Book Pages: 206</strong>
                                        <strong class="tg-bookcategory">Category: Adventure, Fun</strong>
                                        <strong class="tg-bookprice">Price: $23.18</strong>
                                        <div class="tg-ratingbox"><span class="tg-stars"><span></span></span></div>
                                    </div>
                                </figure>
                                <div class="tg-postbookcontent">
                                    <div class="tg-booktitle">
                                        <h3><a href="javascript:void(0);">Seven Minutes In Heaven</a></h3>
                                    </div>
                                    <span class="tg-bookwriter">By: <a href="javascript:void(0);">Sunshine
                                            Orlando</a></span>
                                    <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                        <i class="fa fa-shopping-basket"></i>
                                        <em>Add To Basket</em>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="tg-postbook">
                                <figure class="tg-featureimg">
                                    <div class="tg-bookimg">
                                        <div class="tg-frontcover"><img src="images/books/img-11.jpg"
                                                                        alt="image description"></div>
                                    </div>
                                    <div class="tg-hovercontent">
                                        <div class="tg-description">
                                            <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore
                                                toloregna aliqua enim adia minim veniam, quis nostrud.</p>
                                        </div>
                                        <strong class="tg-bookpage">Book Pages: 206</strong>
                                        <strong class="tg-bookcategory">Category: Adventure, Fun</strong>
                                        <strong class="tg-bookprice">Price: $23.18</strong>
                                        <div class="tg-ratingbox"><span class="tg-stars"><span></span></span></div>
                                    </div>
                                </figure>
                                <div class="tg-postbookcontent">
                                    <div class="tg-booktitle">
                                        <h3><a href="javascript:void(0);">Slow And Steady Wins The Race</a></h3>
                                    </div>
                                    <span class="tg-bookwriter">By: <a href="javascript:void(0);">Drusilla
                                            Glandon</a></span>
                                    <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                        <i class="fa fa-shopping-basket"></i>
                                        <em>Add To Basket</em>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--************************************
                        Picked By Author End
        *************************************-->

    </main>
    <!--************************************
                    Main End
    *************************************-->
    <!--************************************
                    Footer Start
    *************************************-->
    <footer id="tg-footer" class="tg-footer tg-haslayout">
        <div class="tg-footerarea">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ul class="tg-clientservices">
                            <li class="tg-devlivery">
                                <span class="tg-clientserviceicon"><i class="icon-rocket"></i></span>
                                <div class="tg-titlesubtitle">
                                    <h3>Fast Delivery</h3>
                                    <p>Shipping Worldwide</p>
                                </div>
                            </li>
                            <li class="tg-discount">
                                <span class="tg-clientserviceicon"><i class="icon-tag"></i></span>
                                <div class="tg-titlesubtitle">
                                    <h3>Open Discount</h3>
                                    <p>Offering Open Discount</p>
                                </div>
                            </li>
                            <li class="tg-quality">
                                <span class="tg-clientserviceicon"><i class="icon-leaf"></i></span>
                                <div class="tg-titlesubtitle">
                                    <h3>Eyes On Quality</h3>
                                    <p>Publishing Quality Work</p>
                                </div>
                            </li>
                            <li class="tg-support">
                                <span class="tg-clientserviceicon"><i class="icon-heart"></i></span>
                                <div class="tg-titlesubtitle">
                                    <h3>24/7 Support</h3>
                                    <p>Serving Every Moments</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="tg-threecolumns">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="tg-footercol">
                                <strong class="tg-logo"><a href="javascript:void(0);"><img src="images/flogo.png"
                                                                                           alt="image description"></a></strong>
                                <ul class="tg-contactinfo">
                                    <li>
                                        <i class="icon-apartment"></i>
                                        <address>BE 416, Beta Building, FPT University, Hoa Lac High Tech Park -
                                            Km29 Thang Long Avenue, Thach That District, Hanoi City
                                        </address>
                                    </li>
                                    <li>
                                        <i class="icon-phone-handset"></i>
                                        <span>
                                            <em>0123 456 789</em>
                                            <em>0987 654 321</em>
                                        </span>
                                    </li>
                                    <li>
                                        <i class="icon-clock"></i>
                                        <span>From 9am - 5pm</span>
                                    </li>
                                    <li>
                                        <i class="icon-envelope"></i>
                                        <span>
                                            <em><a href="mailto:support@domain.com">support@domain.com</a></em>
                                            <em><a href="mailto:info@domain.com">info@domain.com</a></em>
                                        </span>
                                    </li>
                                </ul>
                                <ul class="tg-socialicons">
                                    <li class="tg-facebook"><a href="facebook.com"><i
                                                class="fa fa-facebook"></i></a></li>
                                    <li class="tg-twitter"><a href="twitter.com"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li class="tg-linkedin"><a href="javascript:void(0);"><i
                                                class="fa fa-linkedin"></i></a></li>
                                    <li class="tg-googleplus"><a href="javascript:void(0);"><i
                                                class="fa fa-google-plus"></i></a></li>
                                    <li class="tg-instagram"><a href="instagram.com"><i class="fa fa-instagram"
                                                                                        aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="tg-footercol tg-widget tg-widgetnavigation">
                                <div class="tg-widgettitle">
                                    <h3>Shipping And Help Information</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <li><a href="aboutus.jsp">Our Story</a></li>
                                        <li><a href="javascript:void(0);">Meet Our Team</a></li>
                                        <li><a href="contactus.jsp">Contact Us</a></li>
                                        <li><a href="javascript:void(0);">FAQ</a></li>
                                        <li><a href="javascript:void(0);">Join Our Team!</a></li>
                                    </ul>
                                    <ul>
                                        <li><a href="javascript:void(0);">Terms of Use</a></li>
                                        <li><a href="javascript:void(0);">Terms of Sale</a></li>
                                        <li><a href="javascript:void(0);">Returns</a></li>
                                        <li><a href="javascript:void(0);">Privacy</a></li>
                                        <li><a href="javascript:void(0);">Cookies</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <div class="tg-footercol tg-widget tg-widgettopsellingauthors">
                                <div class="tg-widgettitle">
                                    <h3>Top Selling Authors</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <li>
                                            <figure><a href="javascript:void(0);"><img
                                                        src="images/author/imag-09.jpg" alt="image description"></a>
                                            </figure>
                                            <div class="tg-authornamebooks">
                                                <h4><a href="javascript:void(0);">Jude Morphew</a></h4>
                                                <p>21,658 Published Books</p>
                                            </div>
                                        </li>
                                        <li>
                                            <figure><a href="javascript:void(0);"><img
                                                        src="images/author/imag-10.jpg" alt="image description"></a>
                                            </figure>
                                            <div class="tg-authornamebooks">
                                                <h4><a href="javascript:void(0);">Shaun Humes</a></h4>
                                                <p>20,257 Published Books</p>
                                            </div>
                                        </li>
                                        <li>
                                            <figure><a href="javascript:void(0);"><img
                                                        src="images/author/imag-11.jpg" alt="image description"></a>
                                            </figure>
                                            <div class="tg-authornamebooks">
                                                <h4><a href="javascript:void(0);">Kathrine Culbertson</a></h4>
                                                <p>15,686 Published Books</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-newsletter">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <h4>Sign up for our Newsletter!</h4>
                        <h5>Tell us what books you love.</h5>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <form class="tg-formtheme tg-formnewsletter">
                            <fieldset>
                                <input type="email" name="email" class="form-control"
                                       placeholder="Enter Your Email ID">
                                <button type="button"><i class="icon-envelope"></i></button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="tg-footerbar">
            <a id="tg-btnbacktotop" class="tg-btnbacktotop" href="javascript:void(0);"><i
                    class="icon-chevron-up"></i></a>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <span class="tg-paymenttype"><img src="images/paymenticon.png"
                                                          alt="image description"></span>
                        <span class="tg-copyright">2023 All Rights Reserved By &copy; Book Library</span>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--************************************
                    Footer End
    *************************************-->
</div>
<!--************************************
                Wrapper End
*************************************-->
<script src="js/vendor/jquery-library.js"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script
src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&amp;language=en"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.vide.min.js"></script>
<script src="js/countdown.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/parallax.js"></script>
<script src="js/countTo.js"></script>
<script src="js/appear.js"></script>
<script src="js/gmap3.js"></script>
<script src="js/main.js"></script>
<script src="js/javascript.js" type="text/javascript"></script>
<script src="js/script.js" type="text/javascript"></script>
</body>

</html>