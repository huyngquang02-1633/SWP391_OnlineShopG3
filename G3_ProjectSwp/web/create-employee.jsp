<%@include file="templates/header_admin.jsp" %>
    <div id="content-right">
        <div class="path-admin">CREATE A NEW EMPLOYEES</b></div>
        <div class="content-main">
            <c:set var="e" value="${employee}"></c:set>
            <form action="createEmployee_admin" method="get" id="content-main-product">
                <div class="content-main-1">
                    <label>Last Name (*):</label><br/>
                    <input type="text" name="lastName" id="" value="${e.getLastName()}"><br/>
                    <label>First Name:</label><br/>
                    <input type="text" name="firstName" id="" value="${e.getFirstName()}"><br/>
                    <label>Title:</label><br/>
                    <input type="text" name="title" id="" value="${e.getTitle()}"><br/>
                    <label>Status:</label><br/>
                    <select name="status" value="${e.isStatus()}">
                        <option value="catid1">1</option>                                
                    </select>
                </div>
                <div class="content-main-1">
                    <label>TitleOfCourtesy:</label><br/>
                    <input type="text" name="titleOfCourtesy" id="" value="${e.getTitleOfCourtesy()}"><br/>
                    <label>Address:</label><br/>
                    <input type="text" name="address" id="" value="${e.getAddress()}"><br/>
                    <label>Department (*):</label><br/>
                    <select name="departmentID">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    <br/>
                </div>
                <div class="content-main-1">
                    <label>Birth Date:</label><br/>
                    <input type="date" name="birthDate" id=""><br/>
                    <label>Phone number:</label><br/>
                    <input type="text" name="phoneNumber" id=""><br/>
                    <label>Gender:</label><br/>
                    <select name="gender">
                        <option value="empid1">Male</option>
                        <option value="empid2">Female</option>
                    </select>
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