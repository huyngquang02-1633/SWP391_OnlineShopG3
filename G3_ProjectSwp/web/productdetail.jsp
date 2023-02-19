<%@include file="templates/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!--************************************
				Inner Banner Start
		*************************************-->
		<div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="tg-innerbannercontent">
							<h1>All Products</h1>
							<ol class="tg-breadcrumb">
								<li><a href="javascript:void(0);">home</a></li>
								<li><a href="javascript:void(0);">Products</a></li>
								<li class="tg-active">Product Title Here</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--************************************
				Inner Banner End
		*************************************-->
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
									<div class="tg-featurebook alert" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<div class="tg-featureditm">
												<div class="row">
													<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 hidden-sm hidden-xs">
														<figure><img src="<%=path%>/images/img-04.png" alt="image description"></figure>
													</div>
													<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
														<div class="tg-featureditmcontent">
															<div class="tg-themetagbox"><span class="tg-themetag">featured</span></div>
															<div class="tg-booktitle">
																<h3><a href="javascript:void(0);">Things To Know About Green Flat Design</a></h3>
															</div>
															<span class="tg-bookwriter">By: <a href="javascript:void(0);">Farrah Whisenhunt</a></span>
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
									<div class="tg-productdetail">
										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
												<div class="tg-postbook">
													<figure class="tg-featureimg"><img src="<%=path%>/images/books/img-07.jpg" alt="image description"></figure>
													<div class="tg-postbookcontent">
														<span class="tg-bookprice">
															<ins>${productInfor.getSalePrice()}</ins>
															<del>${productInfor.getCoverPrice()}</del>
														</span>
														<span class="tg-bookwriter">You save ${productInfor.getCoverPrice()-productInfor.getSalePrice()}</span>
														<ul class="tg-delevrystock">
															<li><i class="icon-rocket"></i><span>Free delivery worldwide</span></li>
															<li><i class="icon-checkmark-circle"></i><span>Dispatch from the USA in 2 working days </span></li>
															<li><i class="icon-store"></i><span>Status: <em>In Stock</em></span></li>
														</ul>
														<div class="tg-quantityholder">
															<em class="minus">-</em>
															<input type="text" class="result" value="0" id="quantity1" name="quantity">
															<em class="plus">+</em>
														</div>
														<a class="tg-btn tg-active tg-btn-lg" href="<%=path%>/account/cart?proID=${productInfor.getProductID()}">Add To Cart</a>
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
													<div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
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
													<span class="tg-stars"><span></span></span>
													<span class="tg-addreviews"><a href="javascript:void(0);">Add Your Review</a></span>
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
														<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore etdoloreat magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisi nisi ut aliquip ex ea commodo consequat aute.</p>
														<p>Arure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla aetur excepteur sint occaecat cupidatat non proident, sunt in culpa quistan officia serunt mollit anim id est laborum sed ut perspiciatis unde omnis iste natus... <a href="javascript:void(0);">More</a></p>
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
													<div class="tg-alsoavailable">
														<figure>
															<img src="images/img-02.jpg" alt="image description">
															<figcaption>
																<h3>Also Available in:</h3>
																<ul>
																	<li><span>CD-Audio $18.30</span></li>
																	<li><span>Paperback $20.10</span></li>
																	<li><span>E-Book $11.30</span></li>
																</ul>
															</figcaption>
														</figure>
													</div>
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
														<div role="tabpanel" class="tg-tab-pane tab-pane active" id="description">
															<div class="tg-description">
																<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veni quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenden
voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
																<figure class="tg-alignleft">
																	<img src="images/placeholdervtwo.jpg" alt="image description">
																	<iframe src="https://www.youtube.com/embed/aLwpuDpZm1k?rel=0&amp;controls=0&amp;showinfo=0"></iframe>
																</figure>
																<ul class="tg-liststyle">
																	<li><span>Sed do eiusmod tempor incididunt ut labore et dolore</span></li>
																	<li><span>Magna aliqua enim ad minim veniam</span></li>
																	<li><span>Quis nostrud exercitation ullamco laboris nisi ut</span></li>
																	<li><span>Aliquip ex ea commodo consequat aute dolor reprehenderit</span></li>
																	<li><span>Voluptate velit esse cillum dolore eu fugiat nulla pariatur</span></li>
																	<li><span>Magna aliqua enim ad minim veniam</span></li>
																	<li><span>Quis nostrud exercitation ullamco laboris nisi ut</span></li>
																</ul>
																<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam remmata aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enimsam
voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos quistatoa.</p>
															</div>
														</div>
														<div role="tabpanel" class="tg-tab-pane tab-pane" id="review">
															<div class="tg-description">
																<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veni quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenden
voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
																<figure class="tg-alignleft">
																	<img src="images/placeholdervtwo.jpg" alt="image description">
																	<iframe src="https://www.youtube.com/embed/aLwpuDpZm1k?rel=0&amp;controls=0&amp;showinfo=0"></iframe>
																</figure>
																<ul class="tg-liststyle">
																	<li><span>Sed do eiusmod tempor incididunt ut labore et dolore</span></li>
																	<li><span>Magna aliqua enim ad minim veniam</span></li>
																	<li><span>Quis nostrud exercitation ullamco laboris nisi ut</span></li>
																	<li><span>Aliquip ex ea commodo consequat aute dolor reprehenderit</span></li>
																	<li><span>Voluptate velit esse cillum dolore eu fugiat nulla pariatur</span></li>
																	<li><span>Magna aliqua enim ad minim veniam</span></li>
																	<li><span>Quis nostrud exercitation ullamco laboris nisi ut</span></li>
																</ul>
																<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam remmata aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enimsam
voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos quistatoa.</p>
															</div>
														</div>
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
														<div class="item">
															<div class="tg-postbook">
																<figure class="tg-featureimg">
																	<div class="tg-bookimg">
																		<div class="tg-frontcover"><img src="images/books/img-01.jpg" alt="image description"></div>
																		<div class="tg-backcover"><img src="images/books/img-01.jpg" alt="image description"></div>
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
																	<span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
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
																		<div class="tg-frontcover"><img src="images/books/img-02.jpg" alt="image description"></div>
																		<div class="tg-backcover"><img src="images/books/img-02.jpg" alt="image description"></div>
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
																	<span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
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
																		<div class="tg-frontcover"><img src="images/books/img-03.jpg" alt="image description"></div>
																		<div class="tg-backcover"><img src="images/books/img-03.jpg" alt="image description"></div>
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
																	<div class="tg-themetagbox"></div>
																	<div class="tg-booktitle">
																		<h3><a href="javascript:void(0);">Let The Good Times Roll Up</a></h3>
																	</div>
																	<span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
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
																		<div class="tg-frontcover"><img src="images/books/img-04.jpg" alt="image description"></div>
																		<div class="tg-backcover"><img src="images/books/img-04.jpg" alt="image description"></div>
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
																		<h3><a href="javascript:void(0);">Our State Fair Is A Great State Fair</a></h3>
																	</div>
																	<span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
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
																		<div class="tg-frontcover"><img src="images/books/img-05.jpg" alt="image description"></div>
																		<div class="tg-backcover"><img src="images/books/img-05.jpg" alt="image description"></div>
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
																	<div class="tg-themetagbox"></div>
																	<div class="tg-booktitle">
																		<h3><a href="javascript:void(0);">Put The Petal To The Metal</a></h3>
																	</div>
																	<span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
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
																		<div class="tg-frontcover"><img src="images/books/img-06.jpg" alt="image description"></div>
																		<div class="tg-backcover"><img src="images/books/img-06.jpg" alt="image description"></div>
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
																	<span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
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
																		<div class="tg-frontcover"><img src="images/books/img-03.jpg" alt="image description"></div>
																		<div class="tg-backcover"><img src="images/books/img-03.jpg" alt="image description"></div>
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
																	<div class="tg-themetagbox"></div>
																	<div class="tg-booktitle">
																		<h3><a href="javascript:void(0);">Let The Good Times Roll Up</a></h3>
																	</div>
																	<span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
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
                                                                                                <li><a href="<%=path%>/productList?categoryID=${cate.getCategoryID()}"><span>${cate.getCategoryName()}</span><em>28245</em></a></li>
                                                                                            </c:forEach>
												
											</ul>
										</div>
									</div>
									<div class="tg-widget tg-widgettrending">
										<div class="tg-widgettitle">
											<h3>Trending Products</h3>
										</div>
										<div class="tg-widgetcontent">
											<ul>
												<li>
													<article class="tg-post">
														<figure><a href="javascript:void(0);"><img src="images/products/img-04.jpg" alt="image description"></a></figure>
														<div class="tg-postcontent">
															<div class="tg-posttitle">
																<h3><a href="javascript:void(0);">Where The Wild Things Are</a></h3>
															</div>
															<span class="tg-bookwriter">By: <a href="javascript:void(0);">Kathrine Culbertson</a></span>
														</div>
													</article>
												</li>
												<li>
													<article class="tg-post">
														<figure><a href="javascript:void(0);"><img src="images/products/img-05.jpg" alt="image description"></a></figure>
														<div class="tg-postcontent">
															<div class="tg-posttitle">
																<h3><a href="javascript:void(0);">Where The Wild Things Are</a></h3>
															</div>
															<span class="tg-bookwriter">By: <a href="javascript:void(0);">Kathrine Culbertson</a></span>
														</div>
													</article>
												</li>
												<li>
													<article class="tg-post">
														<figure><a href="javascript:void(0);"><img src="images/products/img-06.jpg" alt="image description"></a></figure>
														<div class="tg-postcontent">
															<div class="tg-posttitle">
																<h3><a href="javascript:void(0);">Where The Wild Things Are</a></h3>
															</div>
															<span class="tg-bookwriter">By: <a href="javascript:void(0);">Kathrine Culbertson</a></span>
														</div>
													</article>
												</li>
												<li>
													<article class="tg-post">
														<figure><a href="javascript:void(0);"><img src="images/products/img-07.jpg" alt="image description"></a></figure>
														<div class="tg-postcontent">
															<div class="tg-posttitle">
																<h3><a href="javascript:void(0);">Where The Wild Things Are</a></h3>
															</div>
															<span class="tg-bookwriter">By: <a href="javascript:void(0);">Kathrine Culbertson</a></span>
														</div>
													</article>
												</li>
											</ul>
										</div>
									</div>
									<div class="tg-widget tg-widgetinstagram">
										<div class="tg-widgettitle">
											<h3>Instagram</h3>
										</div>
										<div class="tg-widgetcontent">
											<ul>
												<li>
													<figure>
														<img src="images/instagram/img-01.jpg" alt="image description">
														<figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
													</figure>
												</li>
												<li>
													<figure>
														<img src="images/instagram/img-02.jpg" alt="image description">
														<figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
													</figure>
												</li>
												<li>
													<figure>
														<img src="images/instagram/img-03.jpg" alt="image description">
														<figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
													</figure>
												</li>
												<li>
													<figure>
														<img src="images/instagram/img-04.jpg" alt="image description">
														<figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
													</figure>
												</li>
												<li>
													<figure>
														<img src="images/instagram/img-05.jpg" alt="image description">
														<figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
													</figure>
												</li>
												<li>
													<figure>
														<img src="images/instagram/img-06.jpg" alt="image description">
														<figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
													</figure>
												</li>
												<li>
													<figure>
														<img src="images/instagram/img-07.jpg" alt="image description">
														<figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
													</figure>
												</li>
												<li>
													<figure>
														<img src="images/instagram/img-08.jpg" alt="image description">
														<figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
													</figure>
												</li>
												<li>
													<figure>
														<img src="images/instagram/img-09.jpg" alt="image description">
														<figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
													</figure>
												</li>
											</ul>
										</div>
									</div>
									<div class="tg-widget tg-widgetblogers">
										<div class="tg-widgettitle">
											<h3>Top Bloogers</h3>
										</div>
										<div class="tg-widgetcontent">
											<ul>
												<li>
													<div class="tg-author">
														<figure><a href="javascript:void(0);"><img src="images/author/imag-03.jpg" alt="image description"></a></figure>
														<div class="tg-authorcontent">
															<h2><a href="javascript:void(0);">Jude Morphew</a></h2>
															<span>21,658 Published Books</span>
														</div>
													</div>
												</li>
												<li>
													<div class="tg-author">
														<figure><a href="javascript:void(0);"><img src="images/author/imag-04.jpg" alt="image description"></a></figure>
														<div class="tg-authorcontent">
															<h2><a href="javascript:void(0);">Jude Morphew</a></h2>
															<span>21,658 Published Books</span>
														</div>
													</div>
												</li>
												<li>
													<div class="tg-author">
														<figure><a href="javascript:void(0);"><img src="images/author/imag-05.jpg" alt="image description"></a></figure>
														<div class="tg-authorcontent">
															<h2><a href="javascript:void(0);">Jude Morphew</a></h2>
															<span>21,658 Published Books</span>
														</div>
													</div>
												</li>
												<li>
													<div class="tg-author">
														<figure><a href="javascript:void(0);"><img src="images/author/imag-06.jpg" alt="image description"></a></figure>
														<div class="tg-authorcontent">
															<h2><a href="javascript:void(0);">Jude Morphew</a></h2>
															<span>21,658 Published Books</span>
														</div>
													</div>
												</li>
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
											<li><a href="aboutus.html">Our Story</a></li>
											<li><a href="javascript:void(0);">Meet Our Team</a></li>
											<li><a href="contactus.html">Contact Us</a></li>
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
	<script src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&amp;language=en"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.vide.min.js"></script>
	<script src="js/countdown.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/parallax.js"></script>
	<script src="js/countTo.js"></script>
	<script src="js/appear.js"></script>
	<script src="js/gmap3.js"></script>
	<script src="js/main.js"></script>
</body>

</html>