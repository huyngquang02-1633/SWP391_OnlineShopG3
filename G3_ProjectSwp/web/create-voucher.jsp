<%@include file="templates/header_admin.jsp" %>
<div id="content-right">
    <c:if test="${sessionEdit == null}">
        <div class="path-admin">CREATE A NEW VOUCHER</div>
        <c:url var="action" value="/CreateVoucher_admin"/>
    </c:if>
    <c:if test="${sessionEdit !=null}">
        <div class="path-admin">UPDATE VOUCHER</div>
        <c:url var="action" value="/voucherManage_admin"/>
    </c:if>

    <div class="content-main">
        <form action="${action}" method="post" id="content-main-product" name="content-main-product">
            <div class="content-main-1">
                <label>DiscountID (*):</label><br/>
                <input type="text" name="txtDiscountID" id="" value="${VoucherEdit.getDiscountID()}"><br/>
                <label>Title:</label><br/>
                <input type="text" name="txtTitle" id="" value="${VoucherEdit.getTitle()}"><br/>
                <label>Description:</label><br/>
                <input type="text" name="txtDescription" id="" value="${VoucherEdit.getDescription()}"><br/>
            </div>
            <div class="content-main-1">
                <label>Start Date:</label><br/>
                <input type="datetime-local" name="txtStartDate" id="txtStartDate" value="${VoucherEdit.getStartDate()}"><br/>
                <label>End Date:</label><br/>
                <input type="datetime-local" name="txtEndDate" id="txtEndDate" value="${VoucherEdit.getEndDate()}"><br/>
                <br/>
            </div>
            <div class="content-main-1">
                <label>Percentage:</label><br/>
                <input type="text" name="txtPercentage" id="" value="${VoucherEdit.getPercentage()}"><br/>
                <label>Quantity:</label><br/>
                <input type="text" name="txtQuantity" id="" value="${VoucherEdit.getQuantity()}"><br/>
            </div>

            <input style="margin: auto;" type="submit" value="Save"/>

        </form>
    </div>
</div>
</div>

<div id="footer-admin">Mai la anh em</div>
</div>
<script>
    function validateName() {
        let x = document.forms["content-main-product"]["txtStartDate"].value;
        let y = document.forms["content-main-product"]["txtDiscountID"].value;

        console.log(x);
        console.log(y);
    }
</script>
</body>
</html>