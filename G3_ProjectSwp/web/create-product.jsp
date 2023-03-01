<%@include file="templates/header_admin.jsp" %>
            <div id="content-right">
                <div class="path-admin">CREATE A NEW PRODUCT</b></div>
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
        <div id="footer-admin">Mai la anh em</div>
    </div>
</body>
</html>