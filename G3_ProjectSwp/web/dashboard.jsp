<%@include file="templates/header_admin.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<<<<<< HEAD
=======

<div id="content-left">
    <ul>
        <h6><a href="<%=path%>/dashboard_admin"><li>Dashboard</li></a></h6>
        <h6><a href="<%=path%>/orderManage_admin"><li>Orders</li></a></h6>
        <h6><a href="<%=path%>/productManage_admin"><li>Products</li></a></h6>
        <h6><a href="<%=path%>/customer.jsp"><li>Customers</li></a></h6>
        <h6><a href="<%=path%>/employeeManager_admin"><li>Employees</li></a></h6>
    </ul>
</div>
>>>>>>> e33e2e690c19bc4d386adabaa589a80832950d02
<div id="content-right">
    <div class="path-admin">DASHBOARD</b></div>
    <div class="content-main">
        <div id="content-main-dashboard">
            <div id="dashboard-1">
                <div id="dashboard-1-container">
                    <div class="dashboard-item">
                        <div class="dashboard-item-title">Today Revenue</div>
                        <div class="dashboard-item-content">${todayRevenue}</div>
                    </div>
                    <div class="dashboard-item">
                        <div class="dashboard-item-title">Total Orders</div>
                        <div class="dashboard-item-content">${totalOrderInMonth}</div>
                    </div>
                    <div class="dashboard-item">
                        <div class="dashboard-item-title">Monthly Revenue</div>
                        <div class="dashboard-item-content">${monthlyRevenue}</div>
                    </div>
                    <div class="dashboard-item">
                        <div class="dashboard-item-title">New Customers</div>
                        <div class="dashboard-item-content">${totalNewCusInMonth}</div>
                    </div>
                </div>
            </div>
            <div id="dashboard-2">
                <div id="chart" style="text-align: center;">
                    <div id="chart1">
                        <h3>Statistic Revenue (Month)</h3>
                        <canvas id="myChart1" style="width: 100%;"></canvas>
                    </div>
                    <div id="chart2">
                        <canvas id="myChart2" style="width: 80%;"></canvas>


                        <b>Filter:</b>
                        <select name="ddlCategory">
                            <option value="catid1">--- Select ---</option>
                            <option value="catid1">Smart Phone</option>
                            <option value="catid2">Computer</option>
                            <option value="catid3">Television</option>
                            <option value="catid4">Electronic</option>
                        </select> <br>

                        <b>Filter by Date:</b>
                        <form style="padding-bottom: 10px;">
                            <b>From</b>: <input type="date" name="txtStartOrderDate"/> <br>
                            <b>To</b>: <input type="date" name="txtEndOrderDate"/>
                            <input type="submit" value="Filter">
                            </form> 

                        </div>

                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="templates/footer_admin.jsp" %>