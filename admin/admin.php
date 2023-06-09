<?php
 require('require/top.php');
 ?>
<div class="wrwr">
    <div class="path" id="path">
        <a href="../admin"><i class="fa fa-home" aria-hidden="true"></i> Dashboard</a>
        <span>/</span>
        <a href="admin.php">Administrator</a>
    </div>
    <div class="rowbtn">
        <div class="b">
            <input type="text" placeholder="Search by Username" id="sfield" onkeyup="search('sfield','p_name')" />
            <select name="" id="filteradmin" onchange="filteradmin()">
                <option value="#">Filter By</option>
                <option value="Super Admin">Super Admin</option>
                <option value="Admin">Admin</option>
            </select>
        </div>
    </div>
    <div class="catbox-row">
        <div class="catbox">
            <div class="heading">
                <div class="slno">Number</div>
                <div class="p_namee">Username</div>
                <div class="p_image">Privilage</div>
                <div class="p_action">Action</div>
            </div>
            <div class="bspace" id="sellersecroww">
                <?php
            $query="select * from admin order by id desc";
            $res=mysqli_query($con,$query);
            $i=1;
            while($row=mysqli_fetch_assoc($res)){
            $accountD = $row['privilage'];
              if ($accountD == 1){ $print = 'Super Admin'; }
              if ($accountD == 2){ $print = 'Admin'; }
        ?>
                <div class="p_row">
                    <div class="slno"><?php echo $i; ?></div>
                    <div class="p_name"><?php echo $row['username']; ?></div>
                    <div class="p_image"><?php echo $print; ?></div>
                    <div class="p_action">
                        <button class="delete" onclick="deleteadmin(<?php echo $row['id']; ?>)">
                            <i class="fa fa-trash" aria-hidden="true"></i>Delete
                        </button>
                    </div>
                </div>
                <?php
     $i++;
  }
  ?>
            </div>
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
<?php
 require('require/foot.php');
?>