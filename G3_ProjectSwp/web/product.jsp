<%@include file="templates/header_admin.jsp" %>
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span> <br>
        <div class="path-admin">UPDATE PRODUCT INFOMATION</b></div>
        <div class="content-main">
                    <form id="content-main-product">
                        <div class="content-main-1">
                            <label>Product name (*):</label><br/>
                            <input type="text" name="txtProductName" id=""><br/>
                            <label>Category Name(*):</label><br/>
                            <select name="ddlCategory">
                                <option value="catid1">Smart Phone</option>
                                <option value="catid2">Computer</option>
                                <option value="catid3">Television</option>
                                <option value="catid4">Electronic</option>
                            </select>
                            <label>Genre Name:</label><br/>
                            <select name="ddlGenre">
                                <option value="catid1">Smart Phone</option>
                                <option value="catid2">Computer</option>
                                <option value="catid3">Television</option>
                                <option value="catid4">Electronic</option>
                            </select>
                            <label>Cover Price:</label><br/>
                            <input type="text" name="txtUnitPrice" id=""><br/>
                            <label>Sale Price:</label><br/>
                            <input type="text" name="txtQuantityPerUnit" id=""><br/>
                            <label>Author Name:</label><br/>
                            <select name="ddlAuthor">
                                <option value="catid1">Smart Phone</option>
                                <option value="catid2">Computer</option>
                                <option value="catid3">Television</option>
                                <option value="catid4">Electronic</option>
                            </select>
                            <label>Discontinued (*): </label>
                            <input style="    width: 15px;
                            position: relative;
                            top: 5px;
                            left: 5px;" type="checkbox" name="chkDiscontinued" id=""><br/>
                            
                        </div>
                        <div class="content-main-1">
                            <label>Translator:</label><br/>
                            <input type="text" name="txtProductName" id=""><br/>
                            <label>Publisher Name:</label><br/>
                            <select name="ddlAuthor">
                                <option value="catid1">Smart Phone</option>
                                <option value="catid2">Computer</option>
                                <option value="catid3">Television</option>
                                <option value="catid4">Electronic</option>
                            </select>
                            <label>Author Name:</label><br/>
                            <select name="ddlAuthor">
                                <option value="catid1">Smart Phone</option>
                                <option value="catid2">Computer</option>
                                <option value="catid3">Television</option>
                                <option value="catid4">Electronic</option>
                            </select>
                            <label>Language:</label><br/>
                            <select name="ddlCategory">
                                <option value="catid1">Smart Phone</option>
                                <option value="catid2">Computer</option>
                            </select>
                            <label>Book Size:</label><br/>
                            <input type="date" name="txtUnitsInStock" id=""><br/>
                            <label>Book Weight:</label><br/>
                            <input type="text" name="txtProductName" id=""><br/>
                            
                        </div>
                        <div class="content-main-1">
                            <label>Number Of Page:</label><br/>
                            <input type="text" name="txtProductName" id=""><br/>
                            <label>Format:</label><br/>
                            <input type="text" name="txtProductName" id=""><br/>
                            <label>Image:</label><br/>
                            <input type="text" name="txtProductName" id=""><br/>
                            <label>Publish Date:</label><br/>
                            <input type="date" name="txtUnitsInStock" id=""><br/>
                            <label>Publish License:</label><br/>
                            <input type="date" name="txtUnitsInStock" id=""><br/>
                            <label>Description:</label><br/>
                            <input type="text" name="txtUnitsInStock" id=""><br/>
                            <br/> 
                        </div>

                            <input style="margin: auto;" type="submit" value="Save"/>
                        
                    </form>
                </div>
    </div>

</div>            
            <div id="content-right">
                <div class="path-admin">PRODUCTS LIST</b></div>
                <div class="content-main">
                    <div id="content-main-dashboard">
                        <div id="product-title-header">
                            <div id="product-title-1" style="width: 25%;">
                                <b>Filter by Catetory:</b>
                                <form action="productManage_admin" method="">
                                    <select name="categoryFilter">
                                        <option value="0">No Filter</option>
                                        <c:forEach items="${categoryList}" var="cate">
                                            <c:choose>
                                                <c:when test="${cate.getCategoryID() == categoryIDSession}">
                                                    <option value="${cate.getCategoryID()}" selected="selected"><c:out value="${cate.getCategoryName()}"/></option>
                                                </c:when>
                                                <c:otherwise>
                                                    <option value="${cate.getCategoryID()}"><c:out value="${cate.getCategoryName()}"/></option>
                                                </c:otherwise>
                                            </c:choose>                               
                                        </c:forEach>
                                    </select>
                                    <input type="submit" value="Filter">
                                </form>
                            </div>
                            <div id="product-title-2" style="width: 55%;">
                                <form>
                                    <input type="text" name="txtSearch" placeholder="Enter product name to search"/>
                                    <input type="submit" value="Search"
                                </form>
                            </div>
                            <div id="product-title-3" style="width: 20%;">
                                <a href="create-product.jsp">Create a new Product</a>
                            </div>
                        </div>
                        <div id="order-table-admin">
                            <table id="orders">
                                <tr>
                                  <th>Product ID</th>
                                  <th>Product Name</th>
                                  <th>Category Name</th>
                                  <th>Genre Name</th>
                                  <th>Cover Price</th>
                                  <th>Sale Price</th>
                                  <th>Author Name</th>
                                  <th>Translator</th>
                                  <th>Punlisher Name</th>
                                  <th>Supplier Name</th>
                                  <th>Language</th>
                                  <th>Size</th>
                                  <th>Weight</th>
                                  <th>NumberOfPage</th>
                                  <th>Format</th>
                                  <th>Publish Date</th>
                                  <th>Publishing License</th>
                                  <th>Description</th>
                                  <th>Discontinued</th>
                                  <th></th>
                                </tr>
                                <c:forEach items="${productList}" var="product">
                                    <tr>
                                    <td><a href="order-detail.html?id=5">${product.getProductID()}</a></td>
                                    <td>${product.getProductName()}</td>
                                    <td>${product.getCategoryID()}</td>
                                    <td>${product.getGenreID()}</td>
                                    <td>${product.getCoverPrice()}</td>
                                    <td>${product.getSalePrice()}</td>
                                    <td>${product.getAuthorID()}</td>
                                    <td>${product.getTranslator()}</td>
                                    <td>${product.getPublisherID()}</td>
                                    <td>${product.getSupplierID()}</td>
                                    <td>${product.getLanguage()}</td>
                                    <td>${product.getSize()}</td>
                                    <td>${product.getWeight()}</td>
                                    <td>${product.getNumberOfPage()}</td>
                                    <td>${product.getFormat()}</td>
                                    <td>${product.getPublishDate()}</td>
                                    <td>${product.getPublishingLicense()}</td>
                                    <td>${product.getDescription()}</td>
                                    <td>${product.isDiscontinued()}</td>
                                    <td>
                                        <a id="myBtn">Edit</a> &nbsp; | &nbsp; 
                                        <a class="delete" href="delete.html?id=5">Delete</a>
                                    </td>
                                </tr>
                                </c:forEach>
                                
                                
                              </table>
                        </div>
                        <div id="paging">
                    <div class="pagination">

                    <c:if test="${currentPage>1}">
                        <c:url value="/productManage_admin" var="paginationPrevous">
                            <c:param name="currentPage" value="${currentPage-1}" />
                        </c:url>
                        <a href="${paginationPrevous}">&laquo;</a>
                    </c:if>

                    <c:forEach begin="1" end="${numberOfPage}" step="1" var="stepValue">
                        <c:choose>
                            <c:when test="${stepValue == currentPage}">
                                <a href="#" class="active">${stepValue}</a>
                            </c:when>
                            <c:otherwise>
                                <c:url value="/productManage_admin" var="pagination">
                                    <c:param name="currentPage" value="${stepValue}" />
                                </c:url>
                                <a href="${pagination}">${stepValue}</a>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <c:if test="${currentPage<numberOfPage}">
                        <c:url value="/productManage_admin" var="paginationNext">
                            <c:param name="currentPage" value="${currentPage+1}" />
                        </c:url>
                        <a href="${paginationNext}">&raquo;</a>
                    </c:if>


                </div>
            </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer-admin">Mai la anh em</div>
    </div>
</body>
<script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
    btn.onclick = function () {
        modal.style.display = "block";
    };

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    };

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target === modal) {
            modal.style.display = "none";
        }
    };
</script>
</html>