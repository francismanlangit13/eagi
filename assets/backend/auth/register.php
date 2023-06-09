<?php
  require('../../../utility/utility.php');
  $email=get_safe_value($con,$_POST['email']);
  $password=get_safe_value($con,$_POST['password']);
  $mobile=get_safe_value($con,$_POST['mobile']);
  $name=get_safe_value($con,$_POST['name']);
  $e_vfd=1;
  $m_vfd=1;
  $q="select * from users where email='$email' and status='1'";
  $result=array();
  if ($name == "") {
    $result['status']=0;
    $result['msg']="Enter Name";
  } else if ($password == "") {
    $result['status']=0;
    $result['msg']="Enter Password";
  } else if ($email == "") {
    $result['status']=0;
    $result['msg']="Enter Email";
  } else if ($mobile == "") {
    $result['status']=0;
    $result['msg']="Enter Mobile";
  } else {

$query="select * from users where mobile='$mobile'";
$resM=mysqli_query($con,$query);
$m=mysqli_num_rows($resM);
$query="select * from users where email='$email'";
$resE=mysqli_query($con,$query);
$n=mysqli_num_rows($resE);
if($n>0){
    $result['status']=0;
    $result['msg']="Email $email already taken";
}else if($m>0){
  $result['status']=0;
  $result['msg']="Mobile $mobile already used";
}else{
  $password=password_hash($password, PASSWORD_DEFAULT);
    $q="insert into users(name,password,mobile,email,m_vfd,status,e_vfd) values('$name','$password','$mobile','$email','1','$e_vfd','$m_vfd')";
    if(mysqli_query($con,$q)){
        $row=mysqli_fetch_assoc(mysqli_query($con,"select * from users where mobile='$mobile' and email='$email'"));
        $_SESSION['USER_LOGIN']="YES";
        $_SESSION['USER_ID']=$row['id'];
        $result['status']=1;
        $idd=$row['id'];
        $result['msg']="Account Created Successfully";
        $msg="Wallet created";
        mysqli_query($con,"insert into user_wallet (user_id,ballance) values ('$idd','0')");
        mysqli_query($con,"insert into user_w_msg (u_id,cod,msg,balance,is_new) values ('$idd','1','$msg','0','1')");
    }else{
          $result['status']=0;
          $result['msg']="Something Went Wrong";
    }
}
  }
  if(isset($_SESSION['USER_CART'])){
    foreach($_SESSION['USER_CART'] as $cti){
      add_cart_a_login($con,$cti);
  }
  unset($_SESSION['USER_CART']);
}
if(isset($_SESSION['CART_QTY'])){
  unset($_SESSION['CART_QTY']);
}
    echo json_encode($result);
?>