<?php
 require('require/top.php');
 $id=$_GET['sid'];
 $q="select sellers.*,country.cntry_name,state.state_name,city.city_name,pin.pincode,business_type.type from sellers,country,state,city,pin,business_type where sellers.id='$id' and sellers.country=country.id and sellers.state=state.id and sellers.city=city.id and sellers.pin=pin.id and sellers.tob=business_type.id";
 $r=mysqli_query($con,$q);
 $row=mysqli_fetch_assoc($r);
 $plan=$row['plan'];
 ?>
<div class="wrwr">
    <div class="path" id="path">
        <a href="index.php"><i class="fa fa-home" aria-hidden="true"></i> Dashboard</a>
        <span>/</span>
        <a href="sellerapprove.php">Approve Sellers </a><span>/</span>
        <a href="">View</a>
    </div>
    <div class="headrow">
        <div class="wrap" style="height: 30rem;">
            <div class="pp">
                <img src="assets/images/2.png" alt="" />
            </div>
            <div class="detail">
                <h3><?php echo $row['f_name']; ?></h3>
                <h2><?php echo $row['b_name']; ?></h2>
                <h4><?php echo $row['email']; ?></h4>
                <h4><?php echo $row['mobile']; ?></h4>
                <p>
                    <?php echo $row['address']; ?>
                </p>
                <br><br><br><br>
                <h2>Business address</h2>
                <br>
                <p>
                    <?php echo $row['cntry_name']; ?>, <?php echo $row['state_name']; ?>, <?php echo $row['city_name']; ?>,
                    <?php echo $row['pincode']; ?>
                </p>
            </div>
            <div class="detail" style="display: none">
             <?php if($plan=="1"){?>
                
                <?php }else{ ?>
                <h3>Bank Details</h3>
                <h4><?php echo $row['acc_num']; ?></h4>
                <h4><?php echo $row['acc_holder']; ?></h4>
                <p> <?php echo $row['bank']; ?> (<?php echo $row['branch']; ?> )</p>
             <?php } ?>
            </div>
            <div class="detail">
                </div>
            <div class="detail" style="float: right">
                <h3>Subscription: <span style="color:#6a7187;">
                <?php if($plan=="0"){echo "NULL";} ?>
                <?php if($plan=="1"){echo "Trial";} ?>
                <?php if($plan=="2"){echo "Basic";} ?>
                <?php if($plan=="3"){echo "Standard";} ?>
                <?php if($plan=="4"){echo "Premium";} ?>
                <?php if($plan=="5"){echo "Basic⁺";} ?>
                <?php if($plan=="6"){echo "Standard⁺";} ?>
                <?php if($plan=="7"){echo "Premium⁺";} ?>
            </span>
        </h3>
                <a href="../media/seller_profile/<?php echo $row['b_crft']; ?>" target="_blank">
                    <button class="upw" style="width:14rem;">
                        View Business Certificate
                    </button>
                </a>
                <br>
                <a href="../media/seller_profile/<?php echo $row['adhar']; ?>" target="_blank">
                    <button class="upw" style="width:14rem;">
                        View BIR Certifiate
                    </button>
                </a>
                <br>
                <a href="../media/seller_profile/<?php echo $row['pan']; ?>" target="_blank">
                    <button class="upw" style="width:14rem;">
                        View Barangay Clearance
                    </button>
                </a>
            </div>
        </div>
    </div>

    <textarea name="" id="rejection" style="width:96%;resize:none;padding:1.5rem;outline:none;" rows="8"
        placeholder="In case of rejection plese specify the reason"></textarea>
    <div class="row_a">
        <button class="upw" style="width:14rem;" onclick="approve_seller('<?php echo $row['id'] ?>')">
            <i class="fa fa-check-circle-o" aria-hidden="true"></i>
            Approve
        </button>
        <button class="upw" style="width:14rem;" onclick="reject_seller('<?php echo $row['id'] ?>')">
            <i class="fa fa-times" aria-hidden="true"></i>
            Reject
        </button>
    </div>

    <div class="row" style="
              display: block;
              margin-bottom: 2rem;
              font-size: 1.2rem;
              color: #6a7187;
            ">
    </div>
</div>
<?php
 require('require/foot.php');
?>