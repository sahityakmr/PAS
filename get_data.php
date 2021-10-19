<?php
// session_start();

if($_SERVER['REQUEST_METHOD']=='POST'){
include 'DatabaseConfig.php' ;
 
 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
 $f_name = $_POST['fname'];
 $l_name = $_POST['lname'];
 $mobile = $_POST['mobile'];
 $aadhar_no = $_POST['aadhar'];
 $pan_no = $_POST['pan'];
 $dob = $_POST['dob'];
 $imageid =$_POST['imageid'];
 $address = $_POST['address'];
 $supervisor = $_POST['supervisor'];


//$i = uniqid($imageid, true);
 
//echo $imageid;




 // $Sql_Query = "insert into employee (f_name,l_name,mobile,aadhar_no,pan_no,dob,image_name) values ('$f_name','$l_name','$mobile','$aadhar_no','$pan_no','$dob','$imageid')";

  $Sql_Query = "insert into employees (firstname,lastname,contact_info,aadhar,pan,birthdate,image_name,address,user_email) values ('$f_name','$l_name','$mobile','$aadhar_no','$pan_no','$dob','$imageid','$address','$supervisor')";
 
 if(mysqli_query($con,$Sql_Query))
{
 
 echo 'Data Submit Successfully';
 session_destroy();
 
 }
 else{
 
 echo 'Try Again';
 
 }

 mysqli_close($con);

 }
else{
echo 'do again';
}

?>