<?php
 require('../../../../utility/utility.php');
 $name=get_safe_value($con,$_POST['name']);
 $category=get_safe_value($con,$_POST['category']);
 $subcategory=get_safe_value($con,$_POST['subcat']);
 $img1=get_safe_value($con,$_POST['img1']);
 $img2=get_safe_value($con,$_POST['img2']);
 $img3=get_safe_value($con,$_POST['img3']);
 $img4=get_safe_value($con,$_POST['img4']);
 $qty=get_safe_value($con,$_POST['quantity']);
 $price=get_safe_value($con,$_POST['price']);
 $sellprice=get_safe_value($con,$_POST['sellprice']);
 $fa=get_safe_value($con,$_POST['fa']);
 $id=get_safe_value($con,$_POST['id']);
 $dc=get_safe_value($con,$_POST['d']);
 $added_by= $_SESSION['SELLER_ID'];
 $status=1;
 $inapprove=1;
$test="select * from product where id='$id'";
$testres=mysqli_query($con,$test);
$testrow=mysqli_fetch_assoc($testres);
if($img1==''){
    $temp=$testrow['img1'];
    $img1=$temp;
}else{
    $temp=$testrow['img1'];
    $link="../../../../media/product/$temp";
    unlink($link);
}
if($img2==''){
    $temp=$testrow['img2'];
    $img2=$temp;
}else{
    $temp=$testrow['img2'];
    $link="../../../../media/product/$temp";
    unlink($link);
}
if($img3==''){
    $temp=$testrow['img3'];
    $img3=$temp;
}else{
    $temp=$testrow['img3'];
    $link="../../../../media/product/$temp";
    unlink($link);
}
if($img4==''){
    $temp=$testrow['img4'];
    $img4=$temp;
}else{
    $temp=$testrow['img4'];
    $link="../../../../media/product/$temp";
    unlink($link);
}

$cq="select * from product where product_name='$name'and cat_id='$category' and scat_id='$subcategory'";
$cr=mysqli_query($con,$cq);
$cro=mysqli_num_rows($cr);
if($cro==0){
    $qyery="update product set product_name='$name',img1='$img1',img2='$img2',img3='$img3',img4='$img4',cat_id='$category',scat_id='$subcategory',qty='$qty',price='$price',sell_price='$sellprice',fa='$fa',description='$dc',isappp='$inapprove',status='$status',isnew='1' where id='$id'";
    if(mysqli_query($con,$qyery)){
        $queryv="select * from p_reject where product_id='$id'";
        $resv=mysqli_query($con,$queryv);
        $rowv=mysqli_num_rows($resv);
        if($rowv>0){
            mysqli_query($con,"delete from p_reject where product_id='$id'");
        }
        $return['code']=1;
        $return['id']=$id;
        echo json_encode($return);
    }else{
        $return['code']=0;
        echo json_encode($return);
    }
}else{
    $r=mysqli_fetch_assoc($cr);
        $rg=$r['id'];
    if($cro>=1 && $rg==$id){
        $q="update product set product_name='$name',img1='$img1',img2='$img2',img3='$img3',img4='$img4',cat_id='$category',scat_id='$subcategory',qty='$qty',price='$price',sell_price='$sellprice',fa='$fa',description='$dc',isappp='$inapprove',status='$status',isnew='1' where id='$id'";
        if(mysqli_query($con,$q)){
            $queryv="select * from p_reject where product_id='$id'";
            $resv=mysqli_query($con,$queryv);
            $rowv=mysqli_num_rows($resv);
            if($rowv>0){
                mysqli_query($con,"delete from p_reject where product_id='$id'");
            }
            $return['code']=1;
            $return['id']=$id;
            echo json_encode($return);
        }else{
            $return['code']=0;
            echo json_encode($return);
        }
    }else{
        $return['code']=3;
        echo json_encode($return);
    }
}
?>