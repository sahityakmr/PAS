<?php
// session_start();

if($_SERVER['REQUEST_METHOD']=='POST'){
include 'DatabaseConfig.php' ;
include 'get_data.php'; 
 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 $lat = $_POST['lat'];
 $longi = $_POST['longi'];
 $file = $_POST['file'];
 $file2 = $_POST['file2'];
 $file3 = $_POST['file3'];
 $file4 = $_POST['file4'];
 $file5 = $_POST['file5'];
 $file6 = $_POST['file6'];
 $file7 = $_POST['file7'];
 $file8 = $_POST['file8'];
 $file9 = $_POST['file9'];
 $file10 = $_POST['file10'];

 settype($lat,'float');
 settype($longi,'float');
 $imageid =$_POST['imageid'];


 $quert = "insert into biometric (latitude,longitude,fingerprint,fingerprint2,fingerprint3,fingerprint4,fingerprint5,fingerprint6,fingerprint7,fingerprint8,fingerprint9,fingerprint10,image_name) values ('$lat','$longi','$file','$file2','$file3','$file4','$file5','$file6','$file7','$file8','$file9','$file10','$imageid')";
 if(mysqli_query($con,$quert))
    {
 
       echo 'Data Submit Successfully';
       $tr = "truncate table emp";
       $query = "insert into emp(select f_name,l_name,mobile,aadhar_no,pan_no,dob,time,biometric.image_name,id,biometric.latitude,biometric.longitude,biometric.fingerprint,biometric.fingerprint2,biometric.fingerprint3,biometric.fingerprint4,biometric.fingerprint5,biometric.fingerprint6,biometric.fingerprint7,biometric.fingerprint8,biometric.fingerprint9,biometric.fingerprint10 from employee INNER JOIN biometric on biometric.image_name=employee.image_name)";
       if((mysqli_query($con,$tr)) and (mysqli_query($con,$query)))
 {
   echo 'succesfull';
   session_destroy();
 } 
else{
  
  echo 'Try Again';
 
 }
}
}

?>