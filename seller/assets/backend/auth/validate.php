<?php
  require('../../../../utility/utility.php');
  $username=get_safe_value($con,$_POST['username']);
  $password=get_safe_value($con,$_POST['password']);
  $q="select * from sellers where email='$username' and status='1'";
  $q2="select * from sellers where mobile='$username' and status='1'";
    $rs=mysqli_query($con,$q);
    $rs2=mysqli_query($con,$q2);
    $nor=mysqli_num_rows($rs);
    $nor2=mysqli_num_rows($rs2);
    $result=array();
    $Uinput = $username[0];
    if (($Uinput >= 'a' && $Uinput <= 'z') || ($Uinput >= 'A' && $Uinput <= 'Z')){
        if ($password == "") {
            $result['status']=0;
            $result['msg']="Enter Password";
          } else if ($username == "") {
            $result['status']=0;
            $result['msg']="Enter Email or Mobile";
          }else if($nor==0){
            $result['status']=0;
            $result['msg']="Email or Password incorrect";
        }else{
            if($nor>0){
                $rs=$rs;
            }else{
                $rs=$rs2;
            }
            $row=mysqli_fetch_assoc($rs);
            $dps=$row['password'];
            $verify = password_verify($password, $dps);
            if ($verify) {
                $_SESSION['SELLER_LOGIN']="YES";
                $_SESSION['SELLER_ID']=$row['id'];
                $result['status']=1;
                $result['msg']="Login Successfull";
            } else {
                $result['status']=2;
                $result['msg']="Email or Password incorrect";
            }
        }
    }
    else{
        if ($password == "") {
            $result['status']=0;
            $result['msg']="Enter Password";
          } else if ($username == "") {
            $result['status']=0;
            $result['msg']="Enter Email or Mobile";
          }else if($nor2==0){
            $result['status']=0;
            $result['msg']="Mobile or Password incorrect";
        }else{
            if($nor>0){
                $rs=$rs;
            }else{
                $rs=$rs2;
            }
            $row=mysqli_fetch_assoc($rs);
            $dps=$row['password'];
            $verify = password_verify($password, $dps);
            if ($verify) {
                $_SESSION['SELLER_LOGIN']="YES";
                $_SESSION['SELLER_ID']=$row['id'];
                $result['status']=1;
                $result['msg']="Login Successfull";
            } else {
                $result['status']=2;
                $result['msg']="Mobile or Password incorrect";
            }
        }
    }
    echo json_encode($result);
?>