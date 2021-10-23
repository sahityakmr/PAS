<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';
include guid.php;

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $F_name = $_POST['f_name'];
 $L_name = $_POST['L_name'];
 $email = $_POST['email'];
 $password = $_POST['password'];
 $new_GUID = createGUID();
//echo "GUID :: ".$new_GUID;
 $a = guidv4();

 $CheckSQL = "SELECT * FROM UserLoginTable WHERE user_email='$email'";
 
 $check = mysqli_fetch_array(mysqli_query($con,$CheckSQL));
 
 if(isset($check)){

 echo 'Email Already Exist';

 }
else{ 
$Sql_Query = "INSERT INTO userlogintable (id,first_name,last_name,user_email,user_password,s_id) values ('$a','$F_name','$L_name','$email','$password','$new_GUID')";

 if(mysqli_query($con,$Sql_Query))
{
 echo 'Registration Successfully';
}
else
{
 echo 'Something went wrong';
 }
 }

  mysqli_close($con);
}
?>