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
        <link href="<%=path%>/css/styles.css" rel="stylesheet" type="text/css"/>
        <link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>



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

                        <div class="tg-userlogin dropdown">
                            <img id="imgprofile" src="images/users/icon-user.png" width="50" height="50" style=" border-radius: 50%" alt="" >
                            <a id="nameprofile" href="profile.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User<span class="caret"></span></a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<%=path%>/profile.jsp">Profile</a>
                                <a class="dropdown-item" href="#">My Orders</a>
                                <a class="dropdown-item" href="#" onclick="logout()">Log out</a>
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

    <script src="<%=path%>/js/header.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>