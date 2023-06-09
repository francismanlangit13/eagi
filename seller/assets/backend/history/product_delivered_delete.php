<?php
require('../../../../utility/utility.php');
$id=get_safe_value($con,$_POST['id']);
$sellerid=$_SESSION['ID'];
$query="select * from orders where id='$id'";
$res=mysqli_query($con,$query);
$o=mysqli_fetch_assoc($res);
$q="delete from orders where id='$id'";
if(mysqli_query($con,$q)){
    echo 1;
}else{
    echo 0;
}
?>