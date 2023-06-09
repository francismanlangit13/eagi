<?php
require('../../../../utility/utility.php');
$id=get_safe_value($con,$_POST['id']);
$q="delete from dc where id='$id'";
mysqli_query($con,$q);
?>