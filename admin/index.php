<?php
 require('require/top.php');
 $r=mysqli_query($con,"select * from users");
 $user=mysqli_fetch_assoc($r);
 ?>
<div class="wrwr">
    <div class="path">
        <a href=""><i class="fa fa-home" aria-hidden="true"></i> Dashboard</a>
        <span>/</span>
    </div>

    <div class="row">
        <div class="card" style="border:1px solid #e1e4e8;border-radius:0 5px 5px 0">
            <div class="logo">
                <i class="fa fa-list" aria-hidden="true"></i>
            </div>
            <div class="rest">
                <h4>Total Categories</h4>
                <h3><?php echo get_total_subcat($con); ?></h3>
            </div>
        </div>
        <div class="card" style="border:1px solid #e1e4e8;border-radius:0 5px 5px 0">
            <div class="logo">
                <i class="fa fa-briefcase" aria-hidden="true"></i>
            </div>
            <div class="rest">
                <h4>Total Products</h4>
                <h3><?php echo get_total_product($con); ?></h3>
            </div>
        </div>
        <div class="card" style="border:1px solid #e1e4e8;border-radius:0 5px 5px 0">
            <div class="logo">
                <i class="fa fa-users" aria-hidden="true"></i>
            </div>
            <div class="rest">
                <h4>Total Users</h4>
                <h3><?php echo get_total_user($con); ?></h3>
            </div>
        </div>
        <div class="card" style="border:1px solid #e1e4e8;border-radius:0 5px 5px 0">
            <div class="logo">
                <i class="fa fa-user" aria-hidden="true"></i>
            </div>
            <div class="rest">
                <h4>Total Sellers</h4>
                <h3><?php echo get_total_seller($con); ?></h3>
            </div>
        </div>
    </div>
    <div class="row2">
        <div class="chart">
            <div class="row">
                <h4>All Registerd Users</h4>
            </div>
            <div class="sd" id="chart_div"></div>
        </div>
        <div class="right">
            <div class="row">
                <h4>All Registerd Sellers</h4>
            </div>
            <div class="sd" id="piechart"></div>
        </div>
    </div>
    <div class="row" style="
              display: block;
              margin-bottom: 2rem;
              font-size: 1.2rem;
              color: #6a7187;
            ">
    </div>
</div>
<script type="text/javascript">
google.charts.load("current", {
    packages: ["corechart"]
});
google.charts.setOnLoadCallback(drawChart);
google.charts.setOnLoadCallback(drawChartV);
let y = 20;

function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ["Task", "Hours per Day"],
        ["Registered", <?php echo get_total_seller_approved($con); ?>],
        ["Pending", <?php echo get_total_seller_pending($con); ?>],
        ["Rejected", <?php echo get_total_seller_rejected($con); ?>],
    ]);

    var options = {
        title: "Sellers Chart",
        is3D: true,
    };

    var chart = new google.visualization.PieChart(
        document.getElementById("piechart")
    );

    chart.draw(data, options);
}

function drawChartV() {
    var data = google.visualization.arrayToDataTable([
        ["Year", "Users", ""],
        ["19", 1, 0],
        ["2020", 2, 0],
        ["2021", 3, 0],
        ["2022", <?php echo get_total_user($con); ?>, 0],
    ]);

    var options = {
        title: "All Users",
        hAxis: {
            title: "Day",
            titleTextStyle: {
                color: "#333"
            }
        },
        vAxis: {
            title: "Users",
            minValue: 0
        },
    };

    var chart = new google.visualization.AreaChart(
        document.getElementById("chart_div")
    );
    chart.draw(data, options);
}
</script>
<?php
 require('require/foot.php');
?>