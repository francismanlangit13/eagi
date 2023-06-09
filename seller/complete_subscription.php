<?php
    require("require/top.php");
    if(!isset($_GET['hash'])){
        redirect('index.php');
        die();
    }
    authorise($con);
    authenticate_seller($_GET['hash']);
    $rt=0; 
    if(isset($_GET['rt'])){
        $rt=$_GET['rt'];
    }
    $sid=$_SESSION['SELLER_ID'];
    $fullname='';
    $type='';
    $bname='';
    $cntry='';
    $state='';
    $city='';
    $pin='';
    $plan='';
    $acn='';
    $ach='';
    $bank='';
    $branch='';
    $query="select * from sellers where id='$sid'";
    $seller_res=mysqli_query($con,$query);
    $seller_row=mysqli_fetch_assoc($seller_res);
    $is_approve=$seller_row['isapp'];
    $cp=$seller_row['is_cp'];
    if($is_approve==0 && $cp==1 || isset($_GET['rt'])){
        $fullname=$seller_row['f_name'];
        $type=$seller_row['tob'];
        $bname=$seller_row['b_name'];
        $cntry=$seller_row['country'];
        $state=$seller_row['state'];
        $city=$seller_row['city'];
        $pin=$seller_row['pin'];
    }
?>
<div class="path">
    <div class="container">
        <a href="index.php">Home</a>
        /
        <a href="complete_subscription.php?hash=<?php echo hash_code() ?>">Complete Subscription</a>
    </div>
</div>
<div class="cartrow" id="catrow">
    <div class="gh">
        <div class="heading">
            <h3>Complete Subscription</h3>
        </div>
        <div class="maincontainer2">
            <form action="#">
            <h1 class="mt3" style="display:none;">Basic Details</h1>
                <div class="formrow" style="display:none;">
                    <div class="heading">Full Name</div>
                    <input type="text" placeholder="Enter Your Full Name" id="seller_full_name"
                        value="<?php echo $fullname; ?>">
                </div>
                <div class="formrow" style="display:none;">
                    <div class="heading">Email</div>
                    <input type="email" placeholder="Enter Email Id" id="email"
                        value="<?php echo $seller_row['email']; ?>">
                </div>
                <div class="formrow" style="display:none;">
                    <div class="heading">Mobile </div>
                    <input type="text" placeholder="Enter Mobile Number" id="mobile"
                        value="<?php echo $seller_row['mobile'];?>">
                </div>
                <div class="formrow" style="display:none;">
                    <div class="heading">Address </div>
                    <input type="text" placeholder="Enter Mobile Number" id="address"
                        value="<?php echo $seller_row['address'];?>">
                </div>
                <h1 class="mt3" style="display:none;">Business Details</h1>
                <div class="formrow" style="display:none;">
                    <div class="heading">Type</div>
                    <select class="select" name="addscatname" id="seller_b_type">
                        <option value="#">Select Business Type</option>
                        <?php
                                    $queryi="select * from business_type order by id desc";
                                    $resi=mysqli_query($con,$queryi);
                                    while($rowi=mysqli_fetch_assoc($resi)){
                                    if($rowi['id']==$type){
                                ?>
                        <option value="<?php echo $rowi['id']; ?>" selected><?php echo $rowi['type']; ?>
                        </option>
                        <?php }else{ ?>
                        <option value="<?php echo $rowi['id']; ?>"><?php echo $rowi['type']; ?></option>
                        <?php }} ?>
                    </select>
                </div>
                <div class="formrow" style="display:none;">
                    <div class="heading">Business name</div>
                    <input type="text" placeholder="Enter Your Business Name" id="seller_b_name"
                        value="<?php echo $bname; ?>">
                </div>
                <div class="formrow" style="display:none;">
                    <div class="heading">Country</div>
                    <select class="select" id="fsc" onchange="getstatelist()">
                        <option value="#">Select Country</option>
                        <?php
                                    $query="select * from country order by id desc";
                                    $res=mysqli_query($con,$query);
                                    while($row=mysqli_fetch_assoc($res)){
                                    if($row['id']==$cntry){
                                                ?>
                        <option value="<?php echo $row['id']; ?>" selected><?php echo $row['cntry_name']; ?>
                        </option>
                        <?php }else { ?>
                        <option value="<?php echo $row['id']; ?>"><?php echo $row['cntry_name']; ?></option>
                        <?php } } ?>
                    </select>
                </div>
                <div class="formrow" style="display:none;">
                    <div class="heading">State</div>
                    <?php if($state==''){?>
                    <select class="select" id="fscb" style="margin:1rem 0 0 0;" onchange="getcitylist()">
                        <option value="#">Select State</option>
                    </select>
                    <?php } else{ ?>
                    <select class="select" id="fscb" style="margin:1rem 0 0 0;" onchange="getcitylist()">
                        <?php 
                                        $querys="select * from state where c_id='$cntry' order by id desc";
                                        $ress=mysqli_query($con,$querys);
                                        while($rows=mysqli_fetch_assoc($ress)){
                                            if($rows['id']==$state){
                                ?>
                        <option value="<?php echo $rows['id']; ?>" selected><?php echo $rows['state_name']; ?>
                        </option>
                        <?php } else{ ?>
                        <option value="<?php echo $rows['id']; ?>"><?php echo $rows['state_name']; ?></option>
                        <?php }} ?>
                    </select>
                    <?php } ?>
                </div>
                <div class="formrow" style="display:none;">
                    <div class="heading">City</div>
                    <?php if($city==''){?>
                    <select class="select" id="fscb2" style="margin:1rem 0 0 0;" onchange="getpinlist()">
                        <option value="#">Select City</option>
                    </select>
                    <?php } else{ ?>
                    <select class="select" id="fscb2" style="margin:1rem 0 0 0;" onchange="getcitylist()">
                        <?php 
                                    $querys="select * from city where s_id='$state' order by id desc";
                                    $ress=mysqli_query($con,$querys);
                                    while($rows=mysqli_fetch_assoc($ress)){
                                        if($rows['id']==$state){
                                ?>
                        <option value="<?php echo $rows['id']; ?>" selected><?php echo $rows['city_name']; ?>
                        </option>
                        <?php } else{ ?>
                        <option value="<?php echo $rows['id']; ?>"><?php echo $rows['city_name']; ?></option>
                        <?php }} ?>
                    </select>
                    <?php } ?>
                </div>
                <div class="formrow" style="display:none;">
                    <div class="heading">ZIP Code</div>
                    <?php if($city==''){?>
                    <select class="select" id="fscb3" style="margin:1rem 0 0 0;">
                        <option value="#">Select Zipcode</option>
                    </select>
                    <?php } else{ ?>
                    <select class="select" id="fscb3" style="margin:1rem 0 0 0;" onchange="getcitylist()">
                        <?php 
                                    $querys="select * from pin where c_id='$city' order by id desc";
                                    $ress=mysqli_query($con,$querys);
                                    while($rows=mysqli_fetch_assoc($ress)){
                                        if($rows['id']==$pin){
                                ?>
                        <option value="<?php echo $rows['id']; ?>" selected><?php echo $rows['pincode']; ?>
                        </option>
                        <?php } else{ ?>
                        <option value="<?php echo $rows['id']; ?>"><?php echo $rows['pincode']; ?></option>
                        <?php }} ?>
                    </select>
                    <?php } ?>
                </div>
                <h1 class="mt3">Subscription Details</h1>
                    <div class="formrow">
                        <div class="price-grid">
							<div class="price-block agile">
								<div class="price-gd-top pric-clr1">
									<h4>Trial</h4>
									<h3>FREE</h3>
									<h5>15 days free trial</h5>
								</div>
								<div class="price-gd-bottom">
									<div class="price-list">
										<ul>
											<h3>Full access</h3>
                                            <h3>Discount codes</h3>
											<h3>Limit 20 Products</h3>
											<br><br>
										</ul>
									</div>
								</div>
								<div class="price-selet pric-sclr1">
								</div>
							</div>
						</div>
                        <div class="price-grid">
							<div class="price-block agile">
								<div class="price-gd-top pric-clr2">
									<h4>Basic</h4>
									<h3>₱799</h3>
									<h5>per month</h5>
								</div>
								<div class="price-gd-bottom">
									<div class="price-list">
										<ul>
											<h3>Full access</h3>
                                            <h3>Discount codes</h3>
                                            <h3>Customer Support</h3>
											<h3>Limit 100 Products</h3>
                                            <br>
										</ul>
									</div>
								</div>
								<div class="price-selet pric-sclr2">
								</div>
							</div>
						</div>
                        <div class="price-grid wthree">
							<div class="price-block agile">
								<div class="price-gd-top pric-clr3">
									<h4>Standard</h4>
									<h3>999</h3>
									<h5>per month</h5>
								</div>
								<div class="price-gd-bottom">
									<div class="price-list">
										<ul>
                                            <h3>Full access</h3>
											<h3>Discount codes</h3>
                                            <h3>Customer Support</h3>
											<h3>Limit 500 Products</h3>
                                            <br>
										</ul>
									</div>
								</div>
								<div class="price-selet pric-sclr3">
								</div>
							</div>
						</div>
                        <div class="price-grid">
							<div class="price-block agile">
								<div class="price-gd-top pric-clr4">
									<h4>Premium</h4>
									<h3>₱1499</h3>
									<h5>per month</h5>
								</div>
								<div class="price-gd-bottom">
									<div class="price-list">
										<ul>
                                            <h3>Full access</h3>
											<h3>Discount codes</h3>
											<h3>Customer Support</h3>
											<h3>Unlimited Products</h3>
										</ul>
									</div>
								</div>
								<div class="price-selet pric-sclr4">
								</div>
							</div>
						</div>
                    </div>
                    <div class="formrow">
                        <div class="price-grid">
							<div class="price-block agile">
								<div class="price-gd-top pric-clr2">
									<h4>Basic⁺</h4>
									<h3>₱8599</h3>
									<h5>per year</h5>
								</div>
								<div class="price-gd-bottom">
									<div class="price-list">
										<ul>
											<h3>Full access</h3>
                                            <h3>10% Discounted</h3>
                                            <h3>Discount codes</h3>
                                            <h3>Customer Support</h3>
											<h3>Unlimited Products</h3>
											<br><br>
										</ul>
									</div>
								</div>
								<div class="price-selet pric-sclr2">
								</div>
							</div>
						</div>
                        <div class="price-grid">
							<div class="price-block agile">
								<div class="price-gd-top pric-clr3">
									<h4>Standard⁺</h4>
									<h3>₱10199</h3>
									<h5>per year</h5>
								</div>
								<div class="price-gd-bottom">
									<div class="price-list">
										<ul>
                                            <h3>Full access</h3>
                                            <h3>15% Discounted</h3>
											<h3>Discount codes</h3>
                                            <h3>Customer Support</h3>
											<h3>Unlimited Products</h3>
                                            <br>
										</ul>
									</div>
								</div>
								<div class="price-selet pric-sclr3">
								</div>
							</div>
						</div>
                        <div class="price-grid wthree">
							<div class="price-block agile">
								<div class="price-gd-top pric-clr4">
									<h4>Premium⁺</h4>
									<h3>14399</h3>
									<h5>per year</h5>
								</div>
								<div class="price-gd-bottom">
									<div class="price-list">
										<ul>
                                            <h3>Full access</h3>
                                            <h3>20% Discounted</h3>
											<h3>Discount codes</h3>
											<h3>Customer Support</h3>
											<h3>Unlimited Products</h3>
										</ul>
									</div>
								</div>
								<div class="price-selet pric-sclr4">
								</div>
							</div>
						</div>
                    </div>
                    <div class="formrow">
                    <div class="heading">Subscription</div>
                    <?php if($plan==''){?>
                    <select class="select" name="addscatname" id="isplan" onchange="plan()">
                        <option value="#">Select Subscription</option>
                        <option value="1">Trial</option>
                        <option value="2">Basic</option>
                        <option value="3">Standard</option>
                        <option value="4">Premium</option>
                        <option value="5">Basic⁺</option>
                        <option value="6">Standard⁺</option>
                        <option value="7">Premium⁺</option>
                    </select>
                    <?php }else{ ?>

                    <?php if($plan == 1){ ?>
                    <select class="select" name="addscatname" id="isplan" onchange="plan()">
                        <option value="1" selected>Trial</option>
                        <option value="2">Basic</option>
                        <option value="3">Standard</option>
                        <option value="4">Premium</option>
                        <option value="5">Basic⁺</option>
                        <option value="6">Standard⁺</option>
                        <option value="7">Premium⁺</option>
                    </select>
                    <?php }if($plan == 2){ ?>
                    <select class="select" name="addscatname" id="isplan" onchange="plan()">
                        <option value="1">Trial</option>
                        <option value="2" selected>Basic</option>
                        <option value="3">Standard</option>
                        <option value="4">Premium</option>
                        <option value="5">Basic⁺</option>
                        <option value="6">Standard⁺</option>
                        <option value="7">Premium⁺</option>
                    </select>
                    <?php }if($plan == 3){ ?>
                    <select class="select" name="addscatname" id="isplan" onchange="plan()">
                    <option value="1">Trial</option>
                        <option value="2">Basic</option>
                        <option value="3" selected>Standard</option>
                        <option value="4">Premium</option>
                        <option value="5">Basic⁺</option>
                        <option value="6">Standard⁺</option>
                        <option value="7">Premium⁺</option>
                    </select>
                    <?php }if($plan == 4){ ?>
                    <select class="select" name="addscatname" id="isplan" onchange="plan()">
                    <option value="1">Trial</option>
                        <option value="2">Basic</option>
                        <option value="3">Standard</option>
                        <option value="4" selected>Premium</option>
                        <option value="5">Basic⁺</option>
                        <option value="6">Standard⁺</option>
                        <option value="7">Premium⁺</option>
                    </select>
                    <?php }if($plan == 5){ ?>
                    <select class="select" name="addscatname" id="isplan" onchange="plan()">
                    <option value="1">Trial</option>
                        <option value="2">Basic</option>
                        <option value="3">Standard</option>
                        <option value="4">Premium</option>
                        <option value="5" selected>Basic⁺</option>
                        <option value="6">Standard⁺</option>
                        <option value="7">Premium⁺</option>
                    </select>
                    <?php }if($plan == 6){ ?>
                    <select class="select" name="addscatname" id="isplan" onchange="plan()">
                    <option value="1">Trial</option>
                        <option value="2">Basic</option>
                        <option value="3">Standard</option>
                        <option value="4">Premium</option>
                        <option value="5">Basic⁺</option>
                        <option value="6" selected>Standard⁺</option>
                        <option value="7">Premium⁺</option>
                    </select>
                    <?php }if($plan == 7){ ?>
                    <select class="select" name="addscatname" id="isplan" onchange="plan()">
                    <option value="1">Trial</option>
                        <option value="2">Basic</option>
                        <option value="3">Standard</option>
                        <option value="4">Premium</option>
                        <option value="5">Basic⁺</option>
                        <option value="6">Standard⁺</option>
                        <option value="7" selected>Premium⁺</option>
                    </select>
                    <?php }  } ?>
                </div>
                <?php if($plan=='' || $plan==1){ ?>
                <h1 class="mt3" id='isplan0' style="display:none;">Bank Details</h1>
                <div class="formrow" id='isplan1' style="display:none;">
                    <div class="heading">Account Number</div>
                    <input type="number" placeholder="Enter bank account number *" id="seller_ac"
                        value="<?php echo $acn; ?>" />
                </div>
                <div class="formrow" id='isplan2' style="display:none;">
                    <div class="heading">Account Holder's Name</div>
                    <input type="name" placeholder="Enter account holder's name *" id="seller_bank_holder"
                        value="<?php echo $ach; ?>" />
                </div>
                <div class="formrow" id='isplan3' style="display:none;">
                    <div class="heading">Bank Name</div>
                    <input type="name" placeholder="Enter bank name *" id="seller_bank_name"
                        value="<?php echo $bank; ?>" />
                </div>
                <div class="formrow" id='isplan4' style="display:none;">
                    <div class="heading">Branch Name</div>
                    <input type="name" placeholder="Enter branch name *" id="seller_branch_name"
                        value="<?php echo $branch; ?>" />
                </div>
                <?php } ?>
                
                <div class="formrow">
                    <span id="pdstatus" style="color:red; font-size:1.4rem; text-transform:capitalize;">

                    </span>
                </div>
                <div class="formrow">
                    <a href="javascript:void(0)" class="btn d-flex-center-a-j bg-main br-15"
                        onclick="completep2(<?php echo $rt; ?>)">
                        <i class="uil uil-plus"></i>
                        <span>Subscribe</span>
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>
<?php
    require("require/foot.php");
?>