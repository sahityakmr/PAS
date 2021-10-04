<?php
// session_start();

if($_SERVER['REQUEST_METHOD']=='POST'){
include 'DatabaseConfig.php' ;
include 'get_data.php'; 
 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
// $f_name = $_POST['fname'];
// $l_name = $_POST['lname'];
 //$mobile = $_POST['mobile'];
// $aadhar_no = $_POST['aadhar'];
// $pan_no = $_POST['pan'];
// $dob = $_POST['dob'];
// $imageid =$_POST['imageid'];
 //$count=5
 //$i = uniqid($imageid, true);
 $lat = $_POST['lat'];

 $longi = $_POST['longi'];
 $fingerprint = $_POST['fingerprint'];
 settype($lat,'float');
 settype($longi,'float');
 $imageid =$_POST['imageid'];
// $i = uniqid($imageid, true);

 $quert = "insert into biometric (latitude,longitude,fingerprint,image_name) values ('$lat','$longi','$fingerprint','$imageid')";
 if(mysqli_query($con,$quert))
{
 
 echo 'Data Submit Successfully';
 $query = "insert into emp(select f_name,l_name,mobile,aadhar_no,pan_no,dob,time,id,employee.image_name,biometric.latitude,biometric.longitude,biometric.fingerprint from employee INNER JOIN biometric on biometric.image_name=employee.image_name)";
 if(mysqli_query($con,$query))
{
 echo 'succesfull';
 session_destroy();
} 
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