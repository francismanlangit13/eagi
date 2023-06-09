<?php
    require("require/top.php");
    $id=$_SESSION['SELLER_ID'];
    $order_product=getMyOrders($con,2);
    $order_delivered=getMyOrders($con,5);
?>
<div class="row">
    <?php
    if(profile_completed($con)==1 && profle_verified($con)==1){
    ?>
    <div class="col-xxl-6">
        <div class="card">
            <div class="bg-secondary card-border"></div>
            <div class="card-body">
                <div class="media align-items-center">
                    <div class="media-body mr-3">
                        <h2 class="num-text text-black font-w700"><?php echo get_total_products_seller($con) ?></h2>
                        <span class="fs-14">Total Products Published</span>
                    </div>
                    <svg class="primary-icon" width="36" height="36" viewBox="0 0 36 36" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M11.9999 1.5H5.99994C3.51466 1.5 1.49994 3.51472 1.49994 6V29.8125C1.49994 32.2977 3.51466 34.3125 5.99994 34.3125H11.9999C14.4852 34.3125 16.4999 32.2977 16.4999 29.8125V6C16.4999 3.51472 14.4852 1.5 11.9999 1.5Z"
                            fill="#20F174"></path>
                        <path
                            d="M30 1.5H24C21.5147 1.5 19.5 3.51472 19.5 6V12C19.5 14.4853 21.5147 16.5 24 16.5H30C32.4853 16.5 34.5 14.4853 34.5 12V6C34.5 3.51472 32.4853 1.5 30 1.5Z"
                            fill="#20F174"></path>
                        <path
                            d="M30 19.5H24C21.5147 19.5 19.5 21.5147 19.5 24V30C19.5 32.4853 21.5147 34.5 24 34.5H30C32.4853 34.5 34.5 32.4853 34.5 30V24C34.5 21.5147 32.4853 19.5 30 19.5Z"
                            fill="#20F174"></path>
                    </svg>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
        <div class="card card-bd">
            <div class="bg-warning card-border"></div>
            <div class="card-body">
                <div class="media align-items-center">
                    <div class="media-body mr-3">
                    <?php if(count($order_delivered)>0){
                                    $i=1;
                                    foreach($order_delivered as $o){
                                        $number = $i++;
                                        $lastDigit= $number % 10;
                        ?>
                            <?php } }else{$lastDigit = 0 % 10;}?>
                            
                                 <h2 class="num-text text-black font-w700"><?php echo $lastDigit; ?></h2>
                        <span class="fs-14">Successfully Delivered</span>
                    </div>
                    <svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M17.8935 22.5C23.6925 22.5 28.3935 17.799 28.3935 12C28.3935 6.20101 23.6925 1.5 17.8935 1.5C12.0945 1.5 7.39351 6.20101 7.39351 12C7.39351 17.799 12.0945 22.5 17.8935 22.5Z"
                            fill="#FFB930"></path>
                        <path
                            d="M29.5605 21.3344C29.217 20.9909 28.851 20.6699 28.476 20.3564C27.2159 21.96 25.6078 23.2562 23.7733 24.1472C21.9388 25.0382 19.9259 25.5007 17.8864 25.4996C15.847 25.4986 13.8345 25.0342 12.0009 24.1414C10.1673 23.2486 8.56051 21.9507 7.30199 20.3459C5.447 21.8906 3.95577 23.8256 2.9347 26.013C1.91364 28.2003 1.3879 30.586 1.39499 32.9999C1.39499 33.3978 1.55303 33.7793 1.83433 34.0606C2.11564 34.3419 2.49717 34.4999 2.89499 34.4999H32.895C33.2928 34.4999 33.6743 34.3419 33.9557 34.0606C34.237 33.7793 34.395 33.3978 34.395 32.9999C34.4004 30.8324 33.9759 28.6854 33.146 26.683C32.3162 24.6807 31.0975 22.8627 29.5605 21.3344Z"
                            fill="#FFB930"></path>
                    </svg>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
        <div class="card card-bd">
            <div class="bg-primary card-border"></div>
            <div class="card-body">
                <div class="media align-items-center">
                    <div class="media-body mr-3">
                        <h2 class="num-text text-black font-w700">
                            <?php if(count($order_product)>0){
                                    $i=1;
                                    foreach($order_product as $o){
                                        $number = $i++;
                                        $lastDigit= $number % 10;
                        ?>
                            <?php } }else{$lastDigit = 0 % 10;}?>
                            
                                 <h2 class="num-text text-black font-w700"><?php echo $lastDigit; ?></h2>
                        <span class="fs-14">Total Outgoing Orders</span>
                    </div>
                    <svg class="primary-icon" width="36" height="36" viewBox="0 0 36 36" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        
                    </svg>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6">
        <div class="card card-bd">
            <div class="bg-info card-border"></div>
            <div class="card-body">
                <div class="media align-items-center">
                    <div class="media-body mr-3">
                        <h2 class="num-text text-black font-w700">12</h2>
                        <span class="fs-14">Unread Messages</span>
                    </div>
                    <svg width="46" height="46" viewBox="0 0 46 46" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M34.4999 1.91663H11.4999C8.95917 1.91967 6.52338 2.93032 4.72682 4.72688C2.93026 6.52345 1.91961 8.95924 1.91656 11.5V26.8333C1.91935 29.0417 2.6834 31.1816 4.07994 32.8924C5.47648 34.6031 7.42011 35.7801 9.58323 36.225V42.1666C9.58318 42.5136 9.67733 42.8541 9.85564 43.1518C10.0339 43.4495 10.2897 43.6932 10.5957 43.8569C10.9016 44.0206 11.2463 44.0982 11.5929 44.0813C11.9395 44.0645 12.275 43.9539 12.5636 43.7613L23.5749 36.4166H34.4999C37.0406 36.4136 39.4764 35.4029 41.273 33.6064C43.0695 31.8098 44.0802 29.374 44.0832 26.8333V11.5C44.0802 8.95924 43.0695 6.52345 41.273 4.72688C39.4764 2.93032 37.0406 1.91967 34.4999 1.91663ZM30.6666 24.9166H15.3332C14.8249 24.9166 14.3374 24.7147 13.9779 24.3552C13.6185 23.9958 13.4166 23.5083 13.4166 23C13.4166 22.4916 13.6185 22.0041 13.9779 21.6447C14.3374 21.2852 14.8249 21.0833 15.3332 21.0833H30.6666C31.1749 21.0833 31.6624 21.2852 32.0219 21.6447C32.3813 22.0041 32.5832 22.4916 32.5832 23C32.5832 23.5083 32.3813 23.9958 32.0219 24.3552C31.6624 24.7147 31.1749 24.9166 30.6666 24.9166ZM34.4999 17.25H11.4999C10.9916 17.25 10.5041 17.048 10.1446 16.6886C9.78517 16.3291 9.58323 15.8416 9.58323 15.3333C9.58323 14.825 9.78517 14.3374 10.1446 13.978C10.5041 13.6186 10.9916 13.4166 11.4999 13.4166H34.4999C35.0082 13.4166 35.4957 13.6186 35.8552 13.978C36.2146 14.3374 36.4166 14.825 36.4166 15.3333C36.4166 15.8416 36.2146 16.3291 35.8552 16.6886C35.4957 17.048 35.0082 17.25 34.4999 17.25Z"
                            fill="#3ECDFF"></path>
                    </svg>
                </div>
            </div>
        </div>
    </div>
</div>
    <?php
            $t=mysqli_fetch_assoc(mysqli_query($con,"select * from dc where id='$id'"));
            if($t['id'] == $id){
        ?>
            <div class="rowbtn">
                <div class="b">
                    <h2>Current Minimum Order Amount: ₱<?php echo $t['dc']; ?></h2>
                        <input value="" type="number" placeholder="Enter minimum order amount"
                            id="sfield" style="width:98.5%;margin:1rem 0;" />
                    <h2>Delivery Charge: ₱<?php echo $t['pc']; ?></h2>
                        <input value="" type="number" placeholder="Enter delivery charge"
                            id="sfield2" style="width:98.5%;margin:1rem 0;" />
                                <button class="add" onclick="update_dv_charge()">
                                    <i class="fa fa-plus" aria-hidden="true"></i> &nbsp;Update
                                </button>
                                        <span style="font-size:1.2rem;margin-top:0.8rem;" id="erm"></span>
                                <button class="add" onclick="del_dv_charge(<?php echo $id ?>)">
                                    <i class="fa fa-plus" aria-hidden="true"></i> &nbsp;Delete Delivery Charge
                                </button>
                </div>
            </div>
    <?php }else{ ?>
                  <div class="rowbtn">
                    <div class="b">
                        <h2>You're Delivery Charge is not active. Do you want to activate?</h2>
                            <button class="add " onclick="add_dv_charge()">
                                <i class="fa fa-plus" aria-hidden="true"></i> &nbsp;Add Delivery Charge
                            </button>
                    </div>
                  </div>
    <?php } ?>
    <?php
    }if(!profle_verified($con) && !profile_completed($con)){
    ?>
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6" style="flex-basis:100%;">
        <div class="card card-bd">
            <div class="bg-primary card-border"></div>
            <div class="card-body">
                <div class="media align-items-center">
                    <div class="media-body mr-3">
                        <span class="fs-14" style="text-transform: capitalize;">Your Account has been created but not
                            completed. please complete your profile to proceed</span>
                        <br>
                        <br>
                        <a href="complete_profile.php?hash=<?php echo hash_code() ?>" class="btn-a-a-a">Complete
                            Profile</a>
                    </div>
                    <svg class="primary-icon" width="36" height="36" viewBox="0 0 36 36" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M11.9999 1.5H5.99994C3.51466 1.5 1.49994 3.51472 1.49994 6V29.8125C1.49994 32.2977 3.51466 34.3125 5.99994 34.3125H11.9999C14.4852 34.3125 16.4999 32.2977 16.4999 29.8125V6C16.4999 3.51472 14.4852 1.5 11.9999 1.5Z"
                            fill="#20F174"></path>
                        <path
                            d="M30 1.5H24C21.5147 1.5 19.5 3.51472 19.5 6V12C19.5 14.4853 21.5147 16.5 24 16.5H30C32.4853 16.5 34.5 14.4853 34.5 12V6C34.5 3.51472 32.4853 1.5 30 1.5Z"
                            fill="#20F174"></path>
                        <path
                            d="M30 19.5H24C21.5147 19.5 19.5 21.5147 19.5 24V30C19.5 32.4853 21.5147 34.5 24 34.5H30C32.4853 34.5 34.5 32.4853 34.5 30V24C34.5 21.5147 32.4853 19.5 30 19.5Z"
                            fill="#20F174"></path>
                    </svg>
                </div>
            </div>
        </div>
    </div>

    <?php
    }if(!profle_verified($con) && plan($con)==0){
        ?>
        <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6" style="flex-basis:100%;">
            <div class="card card-bd">
                <div class="bg-primary card-border"></div>
                <div class="card-body">
                    <div class="media align-items-center">
                        <div class="media-body mr-3">
                            <span class="fs-14" style="text-transform: capitalize;">Your Profile has been created but not
                                completed. please complete your Subscription to proceed</span>
                            <br>
                            <br>
                            <a href="complete_subscription.php?hash=<?php echo hash_code() ?>" class="btn-a-a-a">Select
                                Subscription</a>
                        </div>
                        <svg class="primary-icon" width="36" height="36" viewBox="0 0 36 36" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M11.9999 1.5H5.99994C3.51466 1.5 1.49994 3.51472 1.49994 6V29.8125C1.49994 32.2977 3.51466 34.3125 5.99994 34.3125H11.9999C14.4852 34.3125 16.4999 32.2977 16.4999 29.8125V6C16.4999 3.51472 14.4852 1.5 11.9999 1.5Z"
                                fill="#20F174"></path>
                            <path
                                d="M30 1.5H24C21.5147 1.5 19.5 3.51472 19.5 6V12C19.5 14.4853 21.5147 16.5 24 16.5H30C32.4853 16.5 34.5 14.4853 34.5 12V6C34.5 3.51472 32.4853 1.5 30 1.5Z"
                                fill="#20F174"></path>
                            <path
                                d="M30 19.5H24C21.5147 19.5 19.5 21.5147 19.5 24V30C19.5 32.4853 21.5147 34.5 24 34.5H30C32.4853 34.5 34.5 32.4853 34.5 30V24C34.5 21.5147 32.4853 19.5 30 19.5Z"
                                fill="#20F174"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    
        <?php
        }if(profile_completed($con)==1 && !plan($con)==null && !profle_verified($con)){
    ?>
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6" style="flex-basis:100%;">
        <div class="card card-bd">
            <div class="bg-primary card-border"></div>
            <div class="card-body">
                <div class="media align-items-center">
                    <div class="media-body mr-3">
                        <span class="fs-14" style="text-transform: capitalize;">Your Profile has been completed but not
                            verified by admin. please wait for verification</span>
                        <br>
                        <br>
                    </div>
                    <svg class="primary-icon" width="36" height="36" viewBox="0 0 36 36" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M11.9999 1.5H5.99994C3.51466 1.5 1.49994 3.51472 1.49994 6V29.8125C1.49994 32.2977 3.51466 34.3125 5.99994 34.3125H11.9999C14.4852 34.3125 16.4999 32.2977 16.4999 29.8125V6C16.4999 3.51472 14.4852 1.5 11.9999 1.5Z"
                            fill="#20F174"></path>
                        <path
                            d="M30 1.5H24C21.5147 1.5 19.5 3.51472 19.5 6V12C19.5 14.4853 21.5147 16.5 24 16.5H30C32.4853 16.5 34.5 14.4853 34.5 12V6C34.5 3.51472 32.4853 1.5 30 1.5Z"
                            fill="#20F174"></path>
                        <path
                            d="M30 19.5H24C21.5147 19.5 19.5 21.5147 19.5 24V30C19.5 32.4853 21.5147 34.5 24 34.5H30C32.4853 34.5 34.5 32.4853 34.5 30V24C34.5 21.5147 32.4853 19.5 30 19.5Z"
                            fill="#20F174"></path>
                    </svg>
                </div>
            </div>
        </div>
    </div>
    <?php
    }if(profile_completed($con)==2 && profle_verified($con)==2){
        $sellerid=$_SESSION['SELLER_ID'];
        $q="select * from rejection where s_id='$sellerid'";
        $r=mysqli_query($con,$q);
        $t=mysqli_fetch_assoc($r);
?>
    <div class="col-xl-3 col-xxl-6 col-lg-6 col-sm-6" style="flex-basis:100%;">
        <div class="card card-bd">
            <div class="bg-primary card-border"></div>
            <div class="card-body">
                <div class="media align-items-center">
                    <div class="media-body mr-3">
                        <span class="fs-14" style="text-transform: capitalize;">Your Profile has been rejected by
                            admin.</span>
                        <br>
                        <span class="fs-14" style="text-transform: capitalize;">Remarks: 
                            <?php echo $t['reason']; ?></span>
                        <br>
                        
                        <br>
                        <a href="complete_profile.php?hash=<?php echo hash_code() ?>&rt=1" class="btn-a-a-a">Edit
                            Profile</a>
                    </div>
                    <svg class="primary-icon" width="36" height="36" viewBox="0 0 36 36" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M11.9999 1.5H5.99994C3.51466 1.5 1.49994 3.51472 1.49994 6V29.8125C1.49994 32.2977 3.51466 34.3125 5.99994 34.3125H11.9999C14.4852 34.3125 16.4999 32.2977 16.4999 29.8125V6C16.4999 3.51472 14.4852 1.5 11.9999 1.5Z"
                            fill="#20F174"></path>
                        <path
                            d="M30 1.5H24C21.5147 1.5 19.5 3.51472 19.5 6V12C19.5 14.4853 21.5147 16.5 24 16.5H30C32.4853 16.5 34.5 14.4853 34.5 12V6C34.5 3.51472 32.4853 1.5 30 1.5Z"
                            fill="#20F174"></path>
                        <path
                            d="M30 19.5H24C21.5147 19.5 19.5 21.5147 19.5 24V30C19.5 32.4853 21.5147 34.5 24 34.5H30C32.4853 34.5 34.5 32.4853 34.5 30V24C34.5 21.5147 32.4853 19.5 30 19.5Z"
                            fill="#20F174"></path>
                    </svg>
                </div>
            </div>
        </div>
    </div>
    <?php
    }
   ?>
</div>
<?php
    require("require/foot.php");
?>