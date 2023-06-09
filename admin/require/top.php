<?php
    require('../utility/utility.php');
    if(!isset($_SESSION['IS_LOGIN_ADMIN'])){
        redirect('login.php');
    }else{
        
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Home</title>
    <link rel="stylesheet" href="assets/css/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="https://kit.fontawesome.com/1615ee01dc.js" crossorigin="anonymous"></script>
</head>

 <?php if (privilage($con) == 0){ } ?>
 <?php if (privilage($con) == 1){ ?>
 <body>
 <div class="mainbody-wrapper">
        <div class="navigation">
            <div class="photo">
                <img src="assets/images/2.png" alt="admin photo" />
            </div>
            <div class="top">
                <h2>Welcome</h2>
                <br />
                <h2>
                    <span>Super Admin</span>
                </h2>
            </div>
            <div class="menutittle">Menu</div>
            <ul>
                <a href="../admin">
                    <li>
                        <i class="fa fa-home" aria-hidden="true"></i>
                        &nbsp;Dashbord
                    </li>
                </a>
                <a href="categories.php" hidden="true">
                    <li>
                        <i class="fa fa-list" aria-hidden="true"></i>
                        &nbsp;Categories

                    </li>
                </a>
                <a href="sub-cat.php" hidden="true">
                    <li>
                        <i class="fa fa-align-left" aria-hidden="true"></i>
                        &nbsp;SubCategories

                    </li>
                </a>
                <a href="product.php" hidden="true">
                    <li>
                        <i class="fa fa-briefcase" aria-hidden="true"></i>
                        &nbsp;Product

                    </li>
                    
                </a>
                <a href="seller.php">
                    <li>
                        <i class="fa fa-users" aria-hidden="true"></i>
                        &nbsp;Sellers

                    </li>
                </a>
                <a href="user.php">
                    <li>
                    <i class="fa fa-users" aria-hidden="true"></i>
                        &nbsp;Users

                    </li>
                </a>
                <a href="admin.php">
                    <li>
                    <i class="fa fa-user" aria-hidden="true"></i>
                        &nbsp;Admins

                    </li>
                </a>
                <a href="deliveryboy.php" hidden="true">
                    <li>
                    <i class="fa fa-user" aria-hidden="true"></i>
                        &nbsp;Delivery Boy

                    </li>
                </a>
                <a href="ad_dv_time.php">
                    <li>
                    <i class="fa fa-clock" aria-hidden="true"></i>
                        &nbsp;Delivery Time

                    </li>
                </a>
                <a href="incompleteorder.php" hidden="true">
                    <li>
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                        &nbsp;Incomplete Orders

                    </li>
                </a>
                <a href="order.php" hidden="true">
                    <li>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        &nbsp;Order Received
                        <?php
                    $count=mysqli_num_rows(mysqli_query($con,"select * from orders where isnew='1'"));
                    if($count>0){
                        ?>
                        <span style="background:red; padding:0.3rem; color:white; border-radius:50%">
                            <?php echo $count; ?>
                        </span>
                        <?php
                    }
                ?>
                    </li>
                </a>
                <a href="orderassigned.php" hidden="true">
                    <li>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        &nbsp;Order Assigned
                    </li>
                </a>
                <a href="ofd.php" hidden="true">
                    <li>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        &nbsp;Out for Delivery
                    </li>
                </a>
                <a href="dv_confirm.php" hidden="true">
                    <li>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        &nbsp;Delivery Confirmation
                    </li>
                </a>
                <a href="udv_confirm.php" hidden="true">
                    <li>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        &nbsp;Undelivery Confirmation
                    </li>
                </a>
                <a href="delivered.php" hidden="true">
                    <li>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        &nbsp;Delivered
                    </li>
                </a>
                <a href="undelivered.php" hidden="true">
                    <li>
                        <i class="fa fa-usd" aria-hidden="true"></i>
                        &nbsp;Undelivered
                    </li>
                </a>
                <a href="issue.php" hidden="true">
                    <li>
                        <i class="fa fa-usd" aria-hidden="true"></i>
                        &nbsp;Issue
                    </li>
                </a>
                <a href="setelmentpending.php" hidden="true">
                    <li>
                        <i class="fa fa-usd" aria-hidden="true"></i>
                        &nbsp;Settelment
                    </li>
                </a>
                <a href="Setteled.php" hidden="true">
                    <li>
                        <i class="fa fa-usd" aria-hidden="true"></i>
                        &nbsp;Setteled
                    </li>
                </a>
                <a href="earning.php" hidden="true">
                    <li>
                        <i class="fa fa-usd" aria-hidden="true"></i>
                        &nbsp; Earning
                    </li>
                </a>
                <a href="sellerapprove.php">
                    <li>
                        <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                        &nbsp;Approve Seller
                        <?php
                    $count=mysqli_num_rows(mysqli_query($con,"select * from sellers where is_cp='1' and is_new='1' and isapp='0'"));
                    if($count>0){
                        ?>
                        <span style="background:red; padding:0.3rem; color:white; border-radius:50%">
                            <?php echo $count; ?>
                        </span>
                        <?php
                    }
                ?>
                    </li>
                </a>
                <a href="nonsellerapprove.php">
                    <li>
                        <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                        &nbsp;Non Approve Seller
                        <?php
                    $count=mysqli_num_rows(mysqli_query($con,"select * from sellers where is_cp='0' and is_new='1'"));
                    if($count>0){
                        ?>
                        <span style="background:red; padding:0.3rem; color:white; border-radius:50%">
                            <?php echo $count; ?>
                        </span>
                        <?php
                    }
                ?>
                    </li>
                </a>
                <a href="productapprove.php" hidden="true">
                    <li>
                        <i class="fa fa-check-square-o" aria-hidden="true"></i>
                        &nbsp;Approve Product
                        <?php
                    $count=mysqli_num_rows(mysqli_query($con,"select * from product where isnew='1' and isappp='0'"));
                    if($count>0){
                        ?>
                        <span style="background:red; padding:0.3rem; color:white; border-radius:50%">
                            <?php echo $count; ?>
                        </span>
                        <?php
                    }
                ?>
                    </li>
                </a>
                <a href="witdraw.php" hidden="true">
                    <li>
                        <i class="fa fa-share-square-o" aria-hidden="true"></i>
                        &nbsp;Witdraw Request
                        <?php
                    $count=mysqli_num_rows(mysqli_query($con,"select * from witdraw_req where isnew='1'"));
                    if($count>0){
                        ?>
                        <span style="background:red; padding:0.3rem; color:white; border-radius:50%">
                            <?php echo $count; ?>
                        </span>
                        <?php
                    }
                    ?>
                    </li>
                </a>
                <a href="loacationc.php">
                    <li>
                        <i class="fa fa-globe" aria-hidden="true"></i>
                        &nbsp;Add Country

                    </li>
                </a>
                <a href="loacations.php">
                    <li>
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        &nbsp;Add State

                    </li>
                </a>
                <a href="loacationci.php">
                    <li>
                        <i class="fa fa-building-o" aria-hidden="true"></i>
                        &nbsp;Add City

                    </li>
                </a>
                <a href="locationpin.php">
                    <li>
                        <i class="fa fa-map-pin" aria-hidden="true"></i>
                        &nbsp;Add Zipcode

                    </li>
                </a>
                <a href="business.php">
                    <li>
                        <i class="fa fa-bullseye" aria-hidden="true"></i>
                        &nbsp;Add Business Type

                    </li>
                </a>
                <a href="filters.php">
                    <li>
                        <i class="fa fa-filter" aria-hidden="true"></i>
                        &nbsp;Add Filter

                    </li>
                </a>
                <a href="subfilters.php">
                    <li>
                        <i class="fa fa-hourglass-start" aria-hidden="true"></i>
                        &nbsp;Add Sub-Filter

                    </li>
                </a>
                <a href="adduser.php">
                    <li>
                        <i class="fa fa-hourglass-start" aria-hidden="true"></i>
                        &nbsp;Add User

                    </li>
                </a>
                <a href="addseller.php">
                    <li>
                        <i class="fa fa-hourglass-start" aria-hidden="true"></i>
                        &nbsp;Add Seller

                    </li>
                </a>
                <a href="addDeliveryBoy.php" hidden="true">
                    <li>
                        <i class="fa fa-hourglass-start" aria-hidden="true"></i>
                        &nbsp;Add Delivery Boy

                    </li>
                </a>
                <a href="addadmin.php">
                    <li>
                        <i class="fa fa-hourglass-start" aria-hidden="true"></i>
                        &nbsp;Add Administrator

                    </li>
                </a>
            </ul>
        </div>
<?php } ?>
 <?php if (privilage($con) == 2){ ?>
 <body>
    <div class="mainbody-wrapper">
        <div class="navigation">
            <div class="photo">
                <img src="assets/images/2.png" alt="admin photo" />
            </div>
            <div class="top">
                <h2>Welcome</h2>
                <br />
                <h2>
                    <span>Admin</span>
                </h2>
            </div>
            <div class="menutittle">Menu</div>
            <ul>
                <a href="../admin">
                    <li>
                        <i class="fa fa-home" aria-hidden="true"></i>
                        &nbsp;Dashbord
                    </li>
                </a>
                <a href="categories.php" hidden="true">
                    <li>
                        <i class="fa fa-list" aria-hidden="true"></i>
                        &nbsp;Categories

                    </li>
                </a>
                <a href="sub-cat.php" hidden="true">
                    <li>
                        <i class="fa fa-align-left" aria-hidden="true"></i>
                        &nbsp;SubCategories

                    </li>
                </a>
                <a href="seller.php">
                    <li>
                        <i class="fa fa-users" aria-hidden="true"></i>
                        &nbsp;Sellers

                    </li>
                </a>
                <a href="user.php">
                    <li>
                    <i class="fa fa-users" aria-hidden="true"></i>
                        &nbsp;Users

                    </li>
                </a>
                <a href="sellerapprove.php">
                    <li>
                        <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                        &nbsp;Approve Seller
                        <?php
                    $count=mysqli_num_rows(mysqli_query($con,"select * from sellers where is_cp='1' and is_new='1' and isapp='0'"));
                    if($count>0){
                        ?>
                        <span style="background:red; padding:0.3rem; color:white; border-radius:50%">
                            <?php echo $count; ?>
                        </span>
                        <?php
                    }
                ?>
                    </li>
                </a>
                <a href="nonsellerapprove.php">
                    <li>
                        <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                        &nbsp;Non Approve Seller
                        <?php
                    $count=mysqli_num_rows(mysqli_query($con,"select * from sellers where is_cp='0' and is_new='1'"));
                    if($count>0){
                        ?>
                        <span style="background:red; padding:0.3rem; color:white; border-radius:50%">
                            <?php echo $count; ?>
                        </span>
                        <?php
                    }
                ?>
                    </li>
                </a>
            </ul>
        </div>
<?php } ?>
    
        <div class="workspace">
            <header>
                <button onclick="logout()">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="beige" width="15px" height="15px">
                        <path d="M0 0h24v24H0z" fill="none" />
                        <path
                            d="M13 3h-2v10h2V3zm4.83 2.17l-1.42 1.42C17.99 7.86 19 9.81 19 12c0 3.87-3.13 7-7 7s-7-3.13-7-7c0-2.19 1.01-4.14 2.58-5.42L6.17 5.17C4.23 6.82 3 9.26 3 12c0 4.97 4.03 9 9 9s9-4.03 9-9c0-2.74-1.23-5.18-3.17-6.83z" />
                    </svg>
                    Logout

                </button>
            </header>
            <?php

}
?>