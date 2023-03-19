<%@include file="templates/header_admin.jsp" %>

<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="content-right">
    <div class="path-admin">CREATE A NEW PRODUCT</b></div>
    <c:if test="${create1_edit2 == 2}">
        <div class="path-admin">UPDATE PRODUCT INFOMATION</b></div>
        <c:url var="formAction" value="editProduct_admin" />
    </c:if>
    <c:if test="${create1_edit2 == 1}">
        <div class="path-admin">CREATE A NEW PRODUCT</b></div>
        <c:url var="formAction" value="createProduct_admin" />
    </c:if>
    <div class="content-main">
        <form id="content-main-product" action="${formAction}" method="post">
            <div class="content-main-1">
                <input type="hidden" name="pid" value="${p.getProductID()}">
                <label>Product name (*):</label><br/>
                <input type="text" name="txtProductName" id="txtProductName" value="${p.getProductName()}"><br/>
                <label>Category Name(*):</label><br/>
                <select name="ddlCategory">
                    <c:forEach items="${listc}" var="c">
                        <option ${p.getCategoryID()==c.getCategoryID()?"selected":""} value=${c.getCategoryID()}>${c.getCategoryName()}</option>
                    </c:forEach>
                </select>
                <label>Genre Name:</label><br/>
                <select name="ddlGenre">
                    <c:forEach items="${listg}" var="g">
                        <option ${p.getGenreID()==g.getGenreID()?"selected":""} value=${g.getGenreID()}>${g.getGenreName()}</option>
                    </c:forEach>
                </select>
                <label>Cover Price:</label><br/>
                <input value="${p.getCoverPrice()}" id="txtCoverPrice" type="text" name="txtCoverPrice" id=""><br/>
                <label>Sale Price:</label><br/>
                <input value="${p.getSalePrice()}" id="txtSalePrice" type="text" name="txtSalePrice" id=""><br/>
                <label>Author Name:</label><br/>
                <select name="ddlAuthor">
                    <c:forEach items="${lista}" var="a">
                        <option ${p.getAuthorID()==a.getAuthorID()?"selected":""} value=${a.getAuthorID()}>${a.getAuthorName()}</option>
                    </c:forEach>
                </select>
                <label>Discontinued (*): </label>
                <input style="    width: 15px;
                       position: relative;
                       top: 5px;
                       left: 5px;" ${p.isDiscontinued()==true?"checked":""} type="checkbox" name="chkDiscontinued" value="1" id=""><br/>

            </div>
            <div class="content-main-1">
                <label>Translator:</label><br/>
                <input value="${p.getTranslator()}" type="text" name="txtTranslator" id="txtTranslator"><br/>
                <label>Publisher Name:</label><br/>
                <select name="ddlPublisher">
                    <c:forEach items="${lists}" var="s">
                        <option ${p.getPublisherID()==s.getSupplierID()?"selected":""} value=${s.getSupplierID()}>${s.getSupplierName()}</option>
                    </c:forEach>
                </select>
                <label>Supplier Name:</label><br/>
                <select name="ddlSupplier">
                    <c:forEach items="${lists}" var="s">
                        <option ${p.getSupplierID()==s.getSupplierID()?"selected":""} value=${s.getSupplierID()}>${s.getSupplierName()}</option>
                    </c:forEach>
                </select>
                <label>Language:</label><br/>
                <input value="${p.getLanguage()}" id="txtLanguage" type="text" name="txtLanguage" id=""><br/>
                <label>Book Size:</label><br/>
                <input value="${p.getSize()}" type="text" name="txtSize" id="txtSize"><br/>
                <label>Book Weight:</label><br/>
                <input value="${p.getWeight()}" type="text" name="txtWeight" id="txtWeight"><br/>

            </div>
            <div class="content-main-1">
                <label>Number Of Page:</label><br/>
                <input value="${p.getNumberOfPage()}" type="text" name="txtPage" id="txtPage"><br/>
                <label>Format:</label><br/>
                <input value="${p.getFormat()}" type="text" name="txtFormat" id="txtFormat"><br/>
                <label>Image:</label><br/>
                <input value="${p.getImage()}" type="text" name="txtImg"><br/>
                <label>Publish Date:</label><br/>
                <input value="${p.getPublishDate()}" type="date" name="txtPublishDate" id=""><br/>
                <label>Publish License:</label><br/>
                <input value="${p.getPublishingLicense()}" type="text" name="txtLicense" id="txtLicense"><br/>
                <label>Description:</label><br/>
                <input value="${p.getDescription()}" type="text" name="txtDescription" id="txtDescription"><br/>
                <br/> 
            </div>

            <input style="margin: auto;" type="submit" value="Add"/>

        </form>
    </div>


    <!--<input style="margin: auto;" type="submit" value="Save"/>-->

</form>
</div>
</div>


<div id="footer-admin">Mai la anh em</div>
</div>
</body>
<script>
    function validate() {
    let i = 1;
    let txtProductName = document.getElementById('txtProductName').value.trim();
    let txtSalePrice = document.getElementById('txtSalePrice').value.trim();
    let txtCoverPrice = document.getElementById('txtCoverPrice').value.trim();
    let txtTranslator = document.getElementById('txtTranslator').value.trim();
    let txtWeight = document.getElementById('txtWeight').value.trim();
    let txtSize = document.getElementById('txtSize').value.trim();
    let txtPage = document.getElementById('txtPage').value.trim();
    let txtDescription = document.getElementById('txtDescription').value.trim();
}
    
    
</script>
</html>