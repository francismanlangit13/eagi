<?php
require('../../../../utility/utility.php');
$id=$_SESSION['SELLER_ID'];
$id1=get_safe_value($con,$_POST['first']);
$id2=get_safe_value($con,$_POST['first2']);
mysqli_query($con,"update dc set dc='$id1',pc='$id2' where id='$id'");
?>