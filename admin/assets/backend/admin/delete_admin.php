<?php 
 require('../../../../utility/utility.php');
 $id=get_safe_value($con,$_POST['id']);
 mysqli_query($con,"delete from admin where id='$id'");
 echo 1;
?>