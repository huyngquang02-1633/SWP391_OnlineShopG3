<%@include file="templates/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!--************************************
                Main Start
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
                        <a class="tg-btn" href="<%=path%>/productList">View All</a>
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
                                            <c:forEach items="${cateList}" var="cate">
                                                <c:if test="${product.getCategoryID() == cate.getCategoryID()}">
                                                    <li><a href="<%=path%>/productList?categoryID=${product.getCategoryID()}">${cate.getCategoryName()}</a></li>
                                                </c:if>
                                            </c:forEach>
                                            <c:forEach items="${genreList}" var="genre">
                                                <c:if test="${product.getGenreID() == genre.getGenreID()}">
                                                    <li><a href="<%=path%>/productList?genreID=${product.getGenreID()}">${genre.getGenreName()}</a></li>
                                                </c:if>
                                            </c:forEach>
                                            
                                        </ul>
                                        <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                        <div class="tg-booktitle">
                                            <h3><a href="<%=path%>/productDetail?proID=${product.getProductID()}">${product.getProductName()}</a></h3>
                                        </div>
                                        <span class="tg-bookwriter">By: 
                                            <c:forEach items="${authorList}" var="author">
                                                <c:if test="${product.getAuthorID() == author.getAuthorID()}">
                                                    <a href="<%=path%>/productList?authorID=${product.getAuthorID()}">${author.getAuthorName()}</a>
                                                </c:if>
                                            </c:forEach>
                                        </span>
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
                                <c:forEach items="${newReleaseList}" var="newRelease">
                                        <div class="col-xs-4 col-sm-4 col-md-6 col-lg-4">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <div class="tg-frontcover"><img src="<%=path%>/images/books/img-07.jpg"
                                                                                    alt="<%=path%>/image description"></div>
                                                    <div class="tg-backcover"><img src="<%=path%>/images/books/img-07.jpg"
                                                                                   alt="<%=path%>/image description"></div>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <i class="icon-heart"></i>
                                                    <span>add to wishlist</span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <c:forEach items="${cateList}" var="cate">
                                                        <c:if test="${newRelease.getCategoryID() == cate.getCategoryID()}">
                                                              <li><a href="<%=path%>/productList?categoryID=${cate.getCategoryID()}">${cate.getCategoryName()}</a></li>
                                                        </c:if>
                                                    </c:forEach>
                                                    <c:forEach items="${genreList}" var="genre">
                                                        <c:if test="${newRelease.getGenreID() == genre.getGenreID()}">
                                                              <li><a href="<%=path%>/productList?genreID=${genre.getGenreID()}">${genre.getGenreName()}</a></li>
                                                        </c:if>
                                                    </c:forEach>
                                                </ul>
                                                <div class="tg-booktitle">
                                                    <h3><a href="javascript:void(0);">${newRelease.getProductName()}</a>
                                                    </h3>
                                                </div>
                                                <span class="tg-bookwriter">By: 
                                                    <c:forEach items="${authorList}" var="author">
                                                        <c:if test="${newRelease.getAuthorID() == author.getAuthorID()}">
                                                            <a href="<%=path%>/productList?authorID=${author.getAuthorID()}">${author.getAuthorName()}</a>
                                                        </c:if>
                                                    </c:forEach>
                                                    
                                                </span>
                                                <span class="tg-stars"><span></span></span>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
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
<%@include file="templates/footer.jsp" %>