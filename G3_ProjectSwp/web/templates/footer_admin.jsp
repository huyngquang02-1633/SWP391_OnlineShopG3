</div>
        <div id="footer-admin">footer</div>
    </div>
</body>
</html>
<script>
    function OrdersChart(){
        var xValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
        var yValues = ${statisticRevenue};
        new Chart("myChart1", {
        type: "line",
        data: {
            labels: xValues,
            datasets: [{ 
            data: yValues,
            borderColor: "green",
            fill: true
            }]
        },
        options: {
            legend: {display: false}
        }
        });
    }

    function CustomersChart(){
        var xValues = ["1", "2", "3", "4", "5", "6"];
        var yValues = ${statisticOrderIn6Month};
        var barColors = ["green", "red", "red", "red", "red", "red"];

        new Chart("myChart2", {
        type: "bar",
        data: {
            labels: xValues,
            datasets: [{
            backgroundColor: barColors,
            data: yValues
            }]
        },
        options: {
            legend: {display: false},
            title: {
            display: true,
            text: "New Customers (30 daily Avg)"
            }
        }
        });
    }
    
    OrdersChart();
    CustomersChart();
    </script>