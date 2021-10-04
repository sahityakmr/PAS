<?php

 if($_SERVER['REQUEST_METHOD']=='POST'){

 include 'DatabaseConfig.php';
 
 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
// $email = $_POST['email'];
// $password = $_POST['password'];
 $FINGERSTRING = $_POST['Fg'];
 
 $Sql_Query = "select * from emp where fingerprint = '$FINGERSTRING'";
 
 $check = mysqli_fetch_array(mysqli_query($con,$Sql_Query));
 
 if(isset($check)){
 
 echo "Data Matched";
 }
 else{
 echo "Invalid FingerString Please Try Again";
 }
 
 }else{
 echo "Check Again";
 }
//mysqli_close($con);

?>