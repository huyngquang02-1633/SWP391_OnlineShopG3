<%@include file="templates/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="https://kit.fontawesome.com/6d68bb11b2.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://kit.fontawesome.com/6d68bb11b2.css" crossorigin="anonymous">
<!--************************************
                Main Start
*************************************-->
<main id="tg-main" class="tg-main tg-haslayout">
    <!--************************************
                    News Grid Start
    *************************************-->
    <div class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div id="tg-twocolumns" class="tg-twocolumns">
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">
                        <div id="tg-content" class="tg-content">
                            <div class="tg-productdetail">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg"><img src="${productInfor.getImage()}"></figure>
                                            <div class="tg-postbookcontent">
                                                <span class="tg-bookprice">
                                                    <ins>${productInfor.getSalePrice()}</ins>
                                                    <del>${productInfor.getCoverPrice()}</del>
                                                </span>
                                                <span class="tg-bookwriter">You save ${productInfor.getCoverPrice()-productInfor.getSalePrice()} đ̲</span>
                                                <ul class="tg-delevrystock">
                                                    <li><i class="icon-rocket"></i><span>Free delivery worldwide</span></li>
                                                    <li><i class="icon-checkmark-circle"></i><span>Dispatch from the Vietnam in 2 working days </span></li>
                                                            <c:choose>
                                                                <c:when test="${availableInStock > 0}">
                                                            <li><i class="icon-store"></i><span>Status: <em>In Stock: ${availableInStock}</em></span></li>
                                                                </c:when>
                                                                <c:otherwise>
                                                            <li><i class="icon-store"></i><span>Status: <em>Out Of Stock</em></span></li>
                                                                </c:otherwise>
                                                            </c:choose>

                                                </ul>
                                                <div class="tg-quantityholder">
                                                    <em class="minus">-</em>
                                                    <input type="text" class="result" value="0" id="quantity1" name="quantity">
                                                    <em class="plus">+</em>
                                                </div>
                                                <c:url value="/account/cart" var="AddToCart">
                                                    <c:param name="previousURL" value="../productDetail?proID=${productInfor.getProductID()}" />
                                                    <c:param name="proID" value="${productInfor.getProductID()}" />
                                                </c:url>
                                                <a class="tg-btn tg-active tg-btn-lg" href="${AddToCart}">Add To Cart</a>
                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                    <span>add to wishlist</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                        <div class="tg-productcontent">
                                            <ul class="tg-bookscategories">
                                                <li>
                                                    <c:forEach items="${cateList}" var="cate"> 
                                                        <c:if test="${cate.getCategoryID() == productInfor.getCategoryID()}">
                                                            <a href="javascript:void(0);">
                                                                ${cate.getCategoryName()}
                                                            </a>
                                                        </c:if>
                                                    </c:forEach>

                                                </li>
                                            </ul>
                                            <c:choose>
                                                <c:when test="${availableInStock > 0}">
                                                    <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>

                                                </c:when>
                                                <c:otherwise>
                                                    <div class="tg-themetagbox"><span class="tg-themetag">Out Of Stock</span></div>
                                                </c:otherwise>
                                            </c:choose>
                                            <div class="tg-booktitle">
                                                <h3>${productInfor.getProductName()}</h3>
                                            </div>
                                            <span class="tg-bookwriter">By: 
                                                <c:forEach items="${authorList}" var="author"> 
                                                    <c:if test="${author.getAuthorID() == productInfor.getAuthorID()}">
                                                        <a href="<%=path%>/productList?authorID=${author.getAuthorID()}">${author.getAuthorName()}</a>
                                                    </c:if>
                                                </c:forEach>
                                            </span>
                                            <c:choose>
                                                    <c:when test="${productInfor.getAverageRating()>0 && productInfor.getAverageRating()<=1}">
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${productInfor.getAverageRating()>1 && productInfor.getAverageRating()<=2}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${productInfor.getAverageRating()>2 && productInfor.getAverageRating()<=3}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${productInfor.getAverageRating()>3 && productInfor.getAverageRating()<=4}">
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #f7e400;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                        <i class="fa-solid fa-star" style="color: #bcbcb5;"></i>
                                                    </c:when>
                                                    <c:when test="${productInfor.getAverageRating()>4 && productInfor.getAverageRating()<=5}">
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
                                                        
                                            <div class="tg-share">
                                                <span>Share:</span>
                                                <ul class="tg-socialicons">
                                                    <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                    <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                    <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                    <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                                    <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="tg-description">
                                                <p>${productInfor.getDescription()}</p>
                                            </div>
                                            <div class="tg-sectionhead">
                                                <h2>Product Details</h2>
                                            </div>
                                            <ul class="tg-productinfo">

                                                <li><span>Author: </span>
                                                    <c:forEach items="${authorList}" var="author"> 
                                                        <c:if test="${author.getAuthorID() == productInfor.getAuthorID()}">
                                                            <span>${author.getAuthorName()}</span>
                                                        </c:if>
                                                    </c:forEach>
                                                </li>
                                                <li><span>Translator: </span><span>${productInfor.getTranslator()}</span></li>
                                                <li><span>Language: </span><span>${productInfor.getLanguage()}</span></li>
                                                <li><span>Format: </span><span>${productInfor.getFormat()}</span></li>
                                                <li><span>Size: </span><span>${productInfor.getSize()}mm | ${productInfor.getWeight()}g</span></li>
                                                <li><span>Number of page: </span><span>${productInfor.getNumberOfPage()}</span></li>
                                                <li><span>Category: </span>
                                                    <c:forEach items="${cateList}" var="cate"> 
                                                        <c:if test="${cate.getCategoryID() == productInfor.getCategoryID()}">
                                                            <span>${cate.getCategoryName()}</span>
                                                        </c:if>
                                                    </c:forEach>
                                                </li>
                                                <li><span>Genre: </span>
                                                    <c:forEach items="${genreList}" var="genre"> 
                                                        <c:if test="${genre.getGenreID() == productInfor.getGenreID()}">
                                                            <span>${genre.getGenreName()}</span>
                                                        </c:if>
                                                    </c:forEach>
                                                </li>
                                                <li><span>Publisher: </span>
                                                    <c:forEach items="${supplierList}" var="publisher"> 
                                                        <c:if test="${publisher.getSupplierID() == productInfor.getPublisherID()}">
                                                            <span>${publisher.getSupplierName()}</span>
                                                        </c:if>
                                                    </c:forEach>
                                                </li>
                                                <li><span>Supplier: </span>
                                                    <c:forEach items="${supplierList}" var="supplier"> 
                                                        <c:if test="${supplier.getSupplierID() == productInfor.getSupplierID()}">
                                                            <span>${supplier.getSupplierName()}</span>
                                                        </c:if>
                                                    </c:forEach>
                                                </li>
                                                <li><span>Publish date: </span><span>${productInfor.getPublishDate()}</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="tg-productdescription">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="tg-sectionhead">
                                                <h2>Product Description</h2>
                                            </div>
                                            <ul class="tg-themetabs" role="tablist">
                                                <li role="presentation" class="active"><a href="#description" data-toggle="tab">Description</a></li>
                                                <li role="presentation"><a href="#review" data-toggle="tab">Reviews</a></li>
                                            </ul>
                                            <div class="tg-tab-content tab-content">
                                                <c:forEach items="${reviewList}" var="review">
                                                    <div style="">
                                                        <span><img src="<%=path%>/images/users/icon-user.png" alt="anh customer"></span>
                                                        <span>${review.getCustomerID()}</span>
                                                        <div><span class="tg-stars"><span></span></span></div>
                                                        <div>${review.getComment()}</div>
                                                        <div>
                                                            <img style="max-width: 20%;" src="<%=path%>/images/books/img-06.jpg" alt="abc">
                                                            <img style="max-width: 20%;" src="<%=path%>/images/books/img-06.jpg" alt="abc">
                                                            <img style="max-width: 20%;" src="<%=path%>/images/books/img-06.jpg" alt="abc">
                                                        </div>
                                                        <div>${review.getReviewDate()}</div>
                                                    </div>
                                                    <hr/>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tg-aboutauthor">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="tg-sectionhead">
                                                <h2>About Author</h2>
                                            </div>
                                            <div class="tg-authorbox">
                                                <figure class="tg-authorimg">
                                                    <img src="images/author/imag-24.jpg" alt="image description">
                                                </figure>
                                                <div class="tg-authorinfo">
                                                    <div class="tg-authorhead">
                                                        <div class="tg-leftarea">
                                                            <div class="tg-authorname">
                                                                <h2>Kathrine Culbertson</h2>
                                                                <span>Author Since: June 27, 2017</span>
                                                            </div>
                                                        </div>
                                                        <div class="tg-rightarea">
                                                            <ul class="tg-socialicons">
                                                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                                <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                                                <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="tg-description">
                                                        <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                    </div>
                                                    <a class="tg-btn tg-active" href="javascript:void(0);">View All Books</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tg-relatedproducts">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="tg-sectionhead">
                                                <h2><span>Related Products</span>You May Also Like</h2>
                                                <a class="tg-btn" href="javascript:void(0);">View All</a>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <div id="tg-relatedproductslider" class="tg-relatedproductslider tg-relatedbooks owl-carousel">
                                                <c:forEach items="${similarProductList}" var="similarProduct">
                                                    <div class="item">
                                                        <div class="tg-postbook">
                                                            <figure class="tg-featureimg">
                                                                <div class="tg-bookimg">
<!--                                                                    <div class="tg-frontcover"><img src="images/books/img-01.jpg" alt="image description"></div>-->
                                                                    <div class="tg-frontcover"><img src="${similarProduct.getImage()}" alt="image description"></div>
                                                                    <div class="tg-backcover"><img src="${similarProduct.getImage()}" alt="image description"></div>
                                                                </div>
                                                                <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                    <i class="icon-heart"></i>
                                                                    <span>add to wishlist</span>
                                                                </a>
                                                            </figure>
                                                            <div class="tg-postbookcontent">
                                                                <ul class="tg-bookscategories">
                                                                    <c:forEach items="${cateList}" var="cate">
                                                                        <c:if test="${similarProduct.getCategoryID() == cate.getCategoryID()}">
                                                                            <li><a href="<%=path%>/productList?categoryID=${similarProduct.getCategoryID()}">${cate.getCategoryName()}</a></li>
                                                                            </c:if>
                                                                        </c:forEach>
                                                                        <c:forEach items="${genreList}" var="genre">
                                                                            <c:if test="${similarProduct.getGenreID() == genre.getGenreID()}">
                                                                            <li><a href="<%=path%>/productList?categoryID=${similarProduct.getGenreID()}">${genre.getGenreName()}</a></li>
                                                                            </c:if>
                                                                        </c:forEach>
                                                                </ul>
                                                                <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                                <div class="tg-booktitle">
                                                                    <h3><a href="<%=path%>/productDetail?proID=${similarProduct.getProductID()}">${similarProduct.getProductName()}</a></h3>
                                                                </div>
                                                                <span class="tg-bookwriter">By: 
                                                                    <c:forEach items="${authorList}" var="author">
                                                                        <c:if test="${similarProduct.getAuthorID() == author.getAuthorID()}">
                                                                            <a href="<%=path%>/productList?authorID=${similarProduct.getAuthorID()}">${author.getAuthorName()}</a>
                                                                        </c:if>
                                                                    </c:forEach>
                                                                </span>
                                                                <span class="tg-stars"><span></span></span>
                                                                <span class="tg-bookprice">
                                                                    <ins>${similarProduct.getSalePrice()}</ins>
                                                                    <del>${similarProduct.getCoverPrice()}</del>
                                                                </span>
                                                                    <c:url value="/account/cart" var="AddToCart">
                                                                        <c:param name="previousURL" value="../productDetail"/>
                                                                        <c:param name="proID" value="${similarProduct.getProductID()}" />
                                                                    </c:url>
                                                                <a class="tg-btn tg-btnstyletwo" href="${AddToCart}">
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
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-left">
                        <aside id="tg-sidebar" class="tg-sidebar">
                            <div class="tg-widget tg-widgetsearch">
                                <form class="tg-formtheme tg-formsearch">
                                    <div class="form-group">
                                        <button type="submit"><i class="icon-magnifier"></i></button>
                                        <input type="search" name="search" class="form-group" placeholder="Search by title, author, key...">
                                    </div>
                                </form>
                            </div>
                            <div class="tg-widget tg-catagories">
                                <div class="tg-widgettitle">
                                    <h3>Categories</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <c:forEach items="${cateList}" var="cate">
                                            <li><a href="<%=path%>/productList?categoryID=${cate.getCategoryID()}"><span>${cate.getCategoryName()}</span><em>></em></a></li>
                                                    </c:forEach>
                                        <li><a href="javascript:void(0);"><span>View All</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tg-widget ">
                                <div class="tg-widgettitle">
                                    <h3>Price</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <li>
                                            <input  type="checkbox" id="checkbox1"> 0đ - 100,000đ
                                        </li></ul>
                                    <ul>
                                        <li>
                                            <input  type="checkbox" id="checkbox2"> 100,000đ - 300,000đ
                                        </li>
                                    </ul>
                                    <ul>
                                        <li>
                                            <input  type="checkbox" id="checkbox3""> 300,000đ - Above
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="tg-widget ">
                                <div class="tg-widgettitle">
                                    <h3>supplier</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <c:forEach items="${SupList}" var="supplier">
                                            <li><a href="<%=path%>/productList?supplierID=${supplier.getSupplierID()}"><span>${supplier.getSupplierName()}</span><em>></em></a></li>
                                                    </c:forEach>
                                    </ul>
                                </div>
                            </div>

                            <div class="tg-widget ">
                                <div class="tg-widgettitle">
                                    <h3>Language</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <li>
                                            <input  type="checkbox" id="checkbox" > Vietnamese
                                        </li></ul>
                                    <ul>
                                        <li>
                                            <input  type="checkbox" id="checkbox"> English
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="tg-widget ">
                                <div class="tg-widgettitle">
                                    <h3>Format</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <li>
                                            <input  type="checkbox" id="checkbox1" > Hardcover
                                        </li></ul>
                                    <ul>
                                        <li>
                                            <input  type="checkbox" id="checkbox1"> Paperback
                                        </li>
                                    </ul>
                                </div>
                                
                            </div>
                            <div class="tg-widget tg-catagories">
                                <div class="tg-widgettitle">
                                    <h3>Categories</h3>
                                </div>
                                <div class="tg-widgetcontent">
                                    <ul>
                                        <c:forEach items="${cateList}" var="cate">
                                            <li><a href="<%=path%>/productList?categoryID=${cate.getCategoryID()}"><span>${cate.getCategoryName()}</span><em>></em></a></li>
                                                    </c:forEach>

                                    </ul>
                                </div>
                                
                            </div>

                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--************************************
                    News Grid End
    *************************************-->
</main>
<!--************************************
                Main End
*************************************-->

<%@include file="templates/footer.jsp" %>