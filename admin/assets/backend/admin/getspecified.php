<?php
require('../../../../utility/utility.php');
$sts=$_POST['id'];
$query="select * from admin where id='$sts' order by id desc";
$res=mysqli_query($con,$query);
$i=1;
$template='';

while($row=mysqli_fetch_assoc($res)){
$username=$row['username'];
$privilage=$row['privilage'];
$id=$row['id'];
$accountD = $row['privilage'];
if ($accountD == 1){ $print = 'Super Admin'; }
if ($accountD == 2){ $print = 'Admin'; }
      $template=$template.'
      <div class="p_row">
                  <div class="slno"> '.$i.'</div>
                  <div class="p_name">'.$row['username'].'</div>
                  <div class="p_image"> '.$print.'</div>
                  <div class="p_action">
                    <button class="delete" onclick="deleteadmin('.$id.')">
                      <i class="fa fa-trash" aria-hidden="true"></i>Delete
                    </button>
                  </div>
                </div>
      ';
     $i++;
  }
  echo $template;
  ?>    