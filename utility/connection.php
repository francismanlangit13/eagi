<?php
session_start();

$con= mysqli_connect('fdb32.awardspace.net','4050821_eagri','Franz2000');
mysqli_select_db($con,'4050821_eagri');
define('D',"/backend_projects/grocerry");
?>