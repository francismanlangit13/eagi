<?php
require('../../../../utility/utility.php');
$username=get_safe_value($con,$_POST['username']);
$pass=get_safe_value($con,$_POST['pass']);
$priv=get_safe_value($con,$_POST['priv']);
$password=password_hash($pass, PASSWORD_DEFAULT);
$query="select * from admin where username='$username'";
$res=mysqli_query($con,$query);
$n=mysqli_num_rows($res);
if($n>0){
    $msg="This Username is not available";
    echo $msg;
}else{
    mysqli_query($con,"insert into admin (username,password,privilage) values ('$username','$password','$priv')");
    echo 1;
}
?> 