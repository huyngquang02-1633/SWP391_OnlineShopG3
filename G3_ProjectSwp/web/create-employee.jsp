<%@include file="templates/header_admin.jsp" %>
<!--<form action="createEmployee_admin" method="get">-->
    <div id="content-right">
        <div class="path-admin">CREATE A NEW EMPLOYEES</b></div>
        <div class="content-main">
            <form action="createEmployee_admin" method="get" id="content-main-product">
                <div class="content-main-1">
                    <label>Last Name (*):</label><br/>
                    <input type="text" name="lastName" id=""><br/>
                    <label>First Name:</label><br/>
                    <input type="text" name="firstName" id=""><br/>
                    <label>Title:</label><br/>
                    <input type="text" name="title" id=""><br/>
                    <label>Status:</label><br/>
                    <select name="status">
                        <option value="catid1">1</option>                                
                    </select>
                </div>
                <div class="content-main-1">
                    <label>TitleOfCourtesy:</label><br/>
                    <input type="text" name="titleOfCourtesy" id=""><br/>
                    <label>Address:</label><br/>
                    <input type="text" name="address" id=""><br/>
                    <label>Department (*):</label><br/>
                    <select name="departmentID">
                        <option value="empid1">1</option>
                        <option value="empid2">2</option>
                        <option value="empid3">3</option>
                        <option value="empid4">4</option>
                        <option value="empid5">5</option>
                    </select>
                    <br/>
                </div>
                <div class="content-main-1">
                    <label>Birth Date:</label><br/>
                    <input type="date" name="birthDate" id=""><br/>
                    <label>Hire Date (*):</label><br/>
                    <input type="date" name="hireDate" id=""><br/>
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