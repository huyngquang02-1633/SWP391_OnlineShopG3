<%@include file="templates/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://kit.fontawesome.com/6d68bb11b2.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://kit.fontawesome.com/6d68bb11b2.css" crossorigin="anonymous">
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
                                            <div class="tg-frontcover"><img src="${product.getImage()}" alt="image description"></div>
                                            <div class="tg-backcover"><img src="${product.getImage()}" alt="image description"></div>
                                        </div>
                                        <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                            <i class="icon-heart"></i>
                                            <span>add to wishlist</span>
                                        </a>
                                    </figure>
                                    <div class="tg-postbookcontent">
                                        <ul class="tg-bookscategories">
                                            <li>
                                                <c:forEach items="${cateList}" var="cate">
                                                    <c:if test="${product.getCategoryID() == cate.getCategoryID()}">
                                                        <a href="<%=path%>/productList?categoryID=${product.getCategoryID()}">${cate.getCategoryName()}</a>
                                                    </c:if>
                                                </c:forEach>
                                            </li>
                                            <li>
                                                <c:forEach items="${genreList}" var="genre">
                                                    <c:if test="${product.getGenreID() == genre.getGenreID()}">
                                                        <a href="<%=path%>/productList?genreID=${product.getGenreID()}">${genre.getGenreName()}</a>
                                                    </c:if>
                                                </c:forEach>
                                            </li>
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
                                        <!--<span class="tg-stars"><span></span></span>-->
                                        <c:choose>
                                            <c:when test="${product.getAverageRating()>=0 && product.getAverageRating()<0.5}">
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                            </c:when>
                                            <c:when test="${product.getAverageRating()>=0.5 && product.getAverageRating()<1.5}">
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                            </c:when>
                                            <c:when test="${product.getAverageRating()>=1.5 && product.getAverageRating()<2.5}">
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                            </c:when>
                                            <c:when test="${product.getAverageRating()>=2.5 && product.getAverageRating()<3.5}">
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                            </c:when>
                                            <c:when test="${product.getAverageRating()>=3.5 && product.getAverageRating()<4.5}">
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                            </c:when>
                                            <c:otherwise>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                            </c:otherwise>
                                        </c:choose>
                                        <span class="tg-bookprice">
                                            <ins>${product.getSalePrice()}</ins>
                                            <del>${product.getCoverPrice()}</del>
                                        </span>
                                        <c:url value="/cart" var="AddToCart">
                                            <c:param name="previousURL" value="homepage" />
                                            <c:param name="proID" value="${product.getProductID()}" />
                                        </c:url>
                                        <a class="tg-btn tg-btnstyletwo" href="${AddToCart}">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Add To Cart</em>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
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
                                <h3><a href="javascript:void(0);">${comingSoon.getProductName()}</a>
                                </h3>
                            </div>
                            <span class="tg-bookwriter">By: 
                                <c:forEach items="${authorList}" var="author">
                                    <c:if test="${comingSoon.getAuthorID() == author.getAuthorID()}">
                                        <a href="<%=path%>/productList?authorID=${product.getAuthorID()}">${author.getAuthorName()}</a>
                                    </c:if>
                                </c:forEach>
                            </span>
                            <span class="tg-stars"><span></span></span>
                            <div class="tg-priceandbtn">
                                <span class="tg-bookprice">
                                    <ins>${comingSoon.getSalePrice()}</ins>
                                    <del>${comingSoon.getCoverPrice()}</del>
                                </span>
                                <a class="tg-btn tg-btnstyletwo tg-active" href="javascript:void(0);">
                                    <i class="fa fa-shopping-basket"></i>
                                    <em>Coming Soon</em>
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
                            <p>Subscribe to our newsletter to get more reading recommendations straight to your inbox!</p>
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
                                                    <div class="tg-frontcover"><img src="${newRelease.getImage()}"></div>
                                                    <div class="tg-backcover"><img src="${newRelease.getImage()}"alt="image description"></div>
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
                                                <c:choose>
                                                    <c:when test="${newRelease.getAverageRating()>0 && newRelease.getAverageRating()<0.5}">
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${newRelease.getAverageRating()>=0.5 && newRelease.getAverageRating()<1.5}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${newRelease.getAverageRating()>=1.5 && newRelease.getAverageRating()<2.5}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${newRelease.getAverageRating()>=2.5 && newRelease.getAverageRating()<3.5}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${newRelease.getAverageRating()>=3.5 && newRelease.getAverageRating()<4.5}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:otherwise>
                                                </c:choose>
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
                        <h2><span>Some Great Books</span>Highest Rating</h2>
                        <a class="tg-btn" href="javascript:void(0);">View All</a>
                    </div>
                </div>
                <div id="tg-pickedbyauthorslider"
                     class="tg-pickedbyauthor tg-pickedbyauthorslider owl-carousel">
                    <c:forEach items="${listHighRating}" var="product">
                        <div class="item">
                            <div class="tg-postbook">
                                <figure class="tg-featureimg">
                                    <div class="tg-bookimg">
                                        <div class="tg-frontcover"><img src="${product.getImage()}"
                                                                        alt="image description"></div>
                                    </div>
                                    <div class="tg-hovercontent">
                                        <div class="tg-description">
                                            <p>${product.getDescription()}</p>
                                        </div>
                                        <strong class="tg-bookpage">Book Pages: ${product.getNumberOfPage()}</strong>
                                        <c:forEach items="${cateList}" var="cate">
                                            <c:if test="${product.getCategoryID() == cate.getCategoryID()}">
                                                <strong class="tg-bookcategory"><a style="color: #484848" href="<%=path%>/productList?categoryID=${cate.getCategoryID()}">${cate.getCategoryName()}</a></strong>
                                                </c:if>
                                            </c:forEach>
                                        <strong style="display: flex" class="tg-bookprice">Price: ${product.getSalePrice()} <del>${product.getCoverPrice()}</del></strong>
                                        <div class="tg-ratingbox"><span><c:choose>
                                                    <c:when test="${product.getAverageRating()>0 && product.getAverageRating()<0.5}">
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${product.getAverageRating()>=0.5 && product.getAverageRating()<1.5}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${product.getAverageRating()>=1.5 && product.getAverageRating()<2.5}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${product.getAverageRating()>=2.5 && product.getAverageRating()<3.5}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${product.getAverageRating()>=3.5 && product.getAverageRating()<4.5}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${product.getAverageRating()>=4.5}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:otherwise>
                                                </c:choose></span></div>
                                    </div>
                                </figure>
                                <div class="tg-postbookcontent">
                                    <div class="tg-booktitle">
                                        <h3><a href="javascript:void(0);">${product.getProductName()}</a></h3>
                                    </div>
                                    <c:forEach items="${authorList}" var="author">
                                        <c:if test="${product.getAuthorID() == author.getAuthorID()}">
                                            <span class="tg-bookwriter">By: <a href="<%=path%>/productList?authorID=${author.getAuthorID()}">${author.getAuthorName()}</a></span>
                                            </c:if>
                                        </c:forEach>
                                    <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                        <i class="fa fa-shopping-basket"></i>
                                        <em>Add To Basket</em>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
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