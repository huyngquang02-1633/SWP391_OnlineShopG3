<%@include file="templates/header_admin.jsp" %>
            <div id="content-left">
                <ul>
                   <h6><a href="<%=path%>/dashboard_admin"><li>Dashboard</li></a></h6>
        <h6><a href="<%=path%>/orderManage_admin"><li>Orders</li></a></h6>
        <h6><a href="<%=path%>/productManage_admin"><li>Products</li></a></h6>
        <h6><a href="<%=path%>/customer.jsp"><li>Customers</li></a></h6>
        <h6><a href="<%=path%>/employees.jsp"><li>Employees</li></a></h6>
                </ul>
            </div>
            <div id="content-right">
                <div class="path-admin">PRODUCTS LIST</b></div>
                <div class="content-main">
                    <div id="content-main-dashboard">
                        <div id="product-title-header">
                            <div id="product-title-1" style="width: 25%;">
                                <b>Filter by Catetory:</b>
                                <form>
                                    <select name="ddlCategory">
                                        <option value="catid1">--- Select ---</option>
                                        <option value="catid1">Smart Phone</option>
                                        <option value="catid2">Computer</option>
                                        <option value="catid3">Television</option>
                                        <option value="catid4">Electronic</option>
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
                                <a href="create-product.html">Create a new Product</a>
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
                                        <a href="edit.html?id=5">Edit</a> &nbsp; | &nbsp; 
                                        <a class="delete" href="delete.html?id=5">Delete</a>
                                    </td>
                                </tr>
                                </c:forEach>
                                
                                
                              </table>
                        </div>
                        <div id="paging">
                            <div class="pagination">
                                <a href="#">&laquo;</a>
                                <a href="#">1</a>
                                <a href="#" class="active">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#">6</a>
                                <a href="#">&raquo;</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer-admin">Mai la anh em</div>
    </div>
</body>
</html>