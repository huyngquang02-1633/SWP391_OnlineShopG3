<%@include file="templates/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                            <div class="tg-products">
                                <div class="tg-sectionhead">
                                    <h2><span>People's Choice</span>Bestselling Books</h2>
                                </div>
                                <div class="tg-productgrid">
                                    <div class="tg-refinesearch">
                                        <span>showing 1 to 8 of 20 total</span>
                                        <form class="tg-formtheme tg-formsortshoitems">
                                            <fieldset>
                                                <div class="form-group">
                                                    <label>Sort by:</label>
                                                    <span class="tg-select">
                                                        <select>
                                                            <option>Name</option>
                                                            <option>Price</option>
                                                            <option>Newest</option>
                                                            <option>Oldest</option>
                                                        </select>
                                                    </span>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                    <c:forEach items="${productList}" var="product">
                                        <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                            <div class="tg-postbook">
                                                <figure class="tg-featureimg">
                                                    <div class="tg-bookimg">
                                                        <div class="tg-frontcover"><img src="<%=path%>/images/books/img-01.jpg" alt="image description"></div>
                                                        <div class="tg-backcover"><img src="<%=path%>/images/books/img-01.jpg" alt="image description"></div>
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
                                                                  <li><a href="<%=path%>/productList?categoryID=${cate.getCategoryID()}">${cate.getCategoryName()}</a></li>
                                                            </c:if>
                                                        </c:forEach>
                                                        <c:forEach items="${genreList}" var="genre">
                                                            <c:if test="${product.getGenreID() == genre.getGenreID()}">
                                                                  <li><a href="<%=path%>/productList?genreID=${genre.getGenreID()}">${genre.getGenreName()}</a></li>
                                                            </c:if>
                                                        </c:forEach>
                                                    </ul>
                                                    <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                    <div class="tg-booktitle">
                                                        <h3><a href="<%=path%>/productDetail?proID=${product.getProductID()}">${product.getProductName()}</a></h3>
                                                    </div>
                                                    <span class="tg-bookwriter">By:
                                                        <c:forEach items="${authorList}" var="author">
                                                            <c:if test="${author.getAuthorID() == product.getAuthorID()}">
                                                                <a href="javascript:void(0);">${author.getAuthorName()}</a>
                                                            </c:if>
                                                        </c:forEach>
                                                    </span>
                                                    <span class="tg-stars"><span></span></span>
                                                    <span class="tg-bookprice">
                                                        <ins>${product.getSalePrice()}</ins>
                                                        <del>${product.getCoverPrice()}</del>
                                                    </span>
                                                        <c:url value="/account/cart" var="AddToCart">
                                                            <c:param name="previousURL" value="../productList" />
                                                            <c:param name="proID" value="${product.getProductID()}" />
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