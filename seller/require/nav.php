<?php
date_default_timezone_set('Asia/Manila');
$time = date('h:i A');
$date = date('F j, Y');
$Day = date("l");
?>
<div class="left-part" id="lft">
    <div class="logo">
        <a href="index.php">
            <img src="../assets/images/logo.png" alt="logo" />
            <img src="../assets/images/title.png" alt="logo" />
        </a>
        <div class="close-left-nav" onclick="close_res_nav()">
            <i class="uil uil-times"></i>
        </div>
    </div>
    <div class="list-nav">
        <ul class="nav-list">
            <?php 
                if(profile_completed($con)==1 && profle_verified($con)==1){
            ?>
            <li class="outer-list">
                <a href="index.php">
                    <i class="uil uil-estate"></i>
                    <span>Dashbaord</span>
                </a>
            </li>
            <li class="outer-list">
                <a href="product.php">
                    <i class="uil uil-box"></i>
                    <span>Product</span>
                </a>
            </li>
            <li class="outer-list">
                <a href="order_received.php">
                    <i class="uil uil-archive"></i>
                    <span>Order Received &nbsp; <span style="color:red;font-size:1.2rem;font-weight:700"></span></span>
                </a>
            </li>
            <li class="outer-list">
                <a href="order_packed.php">
                    <i class="uil uil-parcel"></i>
                    <span>Order Packed</span>
                </a>
            </li>
            <li class="outer-list">
              <a href="outfordelivery.php">
              <i class="uil uil-car-sideview"></i>
                <span>Out For Delivery</span>
              </a>
            </li>
            <li class="outer-list">
                <a href="delivered.php">
                    <i class="uil uil-gift"></i>
                    <span>Delivered</span>
                </a>
            </li>
            <li class="outer-list" style="display:none">
                <a href="issue.php">
                    <i class="uil uil-toilet-paper"></i>
                    <span>Issue</span>
                </a>
            </li>
            <li class="outer-list" style="display:none">
                <a href="order_setteled.php">
                    <i class="uil uil-bag"></i>
                    <span>Order Setteled</span>
                </a>
            </li>
            <li class="outer-list" style="display:none">
                <a href="undelivered_c.php">
                    <i class="uil uil-channel"></i>
                    <span>Undeliver Confirmation</span>
                </a>
            </li>
            <li class="outer-list" style="display:none">
                <a href="undelivered.php">
                    <i class="uil uil-cube"></i>
                    <span>Undelivered</span>
                </a>
            </li>
            <li class="outer-list">
                    <a href="promo.php">
                        <i class="uil uil-no-entry"></i>
                        <span>Promo Code</span>
                    </a>
            </li>
            <?php } else{  ?>

            <li class="outer-list">
                <a href="index.php">
                    <i class="uil uil-estate"></i>
                    <span>Dashbaord</span>
                </a>
            </li>

            <?php } ?>
        </ul>
    </div>
    <div class="copyright">
            <h4 style="color:white; text-align: center;">
                        <span> Date: <?php echo $date ?> (<?php echo $Day ?>) <br> Time: <?php echo $time ?> </span>
                </h4>
                    <br>
                    <span>Copyright 2022 E-Agri. All rights reserved</span>
    </div>
</div>