<?php
 require('require/top.php');
 $order=getMyOrders($con,5);
?>
<div class="path">
    <div class="container">
        <a href="index.php">Home</a>
        /
        <a href="delivered.php">Delivered</a>
    </div>
</div>
<div class="cartrow" id="catrow">
          <div class="gh">
            <div class="heading">
              <h3>Delivered Orders</h3>
            </div>
            <div class="maincontainer">
              <table class="wishlist">
                <thead>
                  <th>#</th>
                  <th>Id</th>
                  <th>Added On</th>
                  <th>Status</th>
                  <th>Confirmed</th>
                  <th>Action</th>
                </thead>
                <tbody>
                <?php
                    if(count($order)>0){
                        $i=1;
                        foreach($order as $o){
                          $idd=$o['id'];
                          $sellerId=$_SESSION['SELLER_ID'];

                          $rd=mysqli_query($con,"select * from order_stlmnt where oid='$idd' and sid='$sellerId'");
                         if(mysqli_num_rows($rd)==0){
                         ?>
                            <tr>
                    <td><?php echo $i; $i++; ?></td>
                    <td>
                      <a href="javascript:void(0)">
                      <?php echo $o['o_id']; ?>
                      </a>
                    </td>
                    <td><?php echo $o['added_on']; ?></td>
                    <td>
                      <span class="badge green"> Delivered </span>
                    </td>
                    <td>
                      <span class="badge green"> <?php if($o['u_cnfrm']==1){echo 'Yes';} else{echo 'No';} ?> </span>
                    </td>
                    <td>
                      <div class="acn">
                        <a href="delivered-detail.php?id=<?php echo $o['id']; ?>" class="view">
                          <i class="uil uil-eye"></i>
                        </a>
                        <?php if($o['u_cnfrm']==1){ ?>
                        <a href="" onclick="delete_product_delivered(<?php echo $o['id']; ?>)" class="del">
                                    <i class="uil uil-trash-alt"></i>
                                </a>
                        <?php }else{ ?>
                        <?php } ?>
                      </div>
                  </tr>
                         
                         <?php
                         }
                        }
                    }
                ?>
               
                </tbody>
              </table>
            </div>
          </div>
        </div>
<?php
    require("require/foot.php");
?>