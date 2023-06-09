<?php
require('../../../../utility/utility.php');
$id=$_SESSION['SELLER_ID'];
$id1=get_safe_value($con,$_POST['first']);
$id2=get_safe_value($con,$_POST['first2']);
$qyery="insert into dc (id,dc,pc) values ('$id','$id1','$id2')";
mysqli_query($con,$qyery);
?>