<%@include file="templates/header.jsp" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

                                <c:forEach items="${productList}" var="product">
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

                                                <li><a href="javascript:void(0);"></a></li>
                                                <li><a href="javascript:void(0);">${product.getFormat()}</a></li>
                                            </ul>
                                            <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                            <div class="tg-booktitle">
                                                <h3><a href="javascript:void(0);">${product.getProductName()}</a></h3>

                                            </div>
                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela
                                                    Gunning</a></span>
                                            <span class="tg-stars"><span></span></span>
                                            <span class="tg-bookprice">

                                                <ins>${product.getSalePrice()}</ins>
                                                <del>${product.getCoverPrice()}</del>

                                            </span>
                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                <i class="fa fa-shopping-basket"></i>
                                                <em>Add To Basket</em>
                                            </a>
                                        </div>
                                    </div>
                                </div>

                                </c:forEach>

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

                                                <h3><a href="<%=path%>/account/cart?proID=1">Drive Safely, No Bumping</a></h3>

                                                
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
                                            <h3><a href="javascript:void(0);">There’s No Time Like The Present</a></h3>
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
</body>

</html>