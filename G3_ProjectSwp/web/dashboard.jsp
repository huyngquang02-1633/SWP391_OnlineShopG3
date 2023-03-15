<%@include file="templates/header_admin.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="content-right">
    <div class="path-admin">DASHBOARD</b></div>
    <div class="content-main">
        <hr/>
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