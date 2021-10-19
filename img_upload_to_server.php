<?php

include 'DatabaseConfig.php';

// Create connection
$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);
 
 if($_SERVER['REQUEST_METHOD'] == 'POST')
 {
 $DefaultId = 0;
 
 $ImageData = $_POST['image_path'];
 
 $ImageName = $_POST['image_name'];



 $GetOldIdSQL ="SELECT id FROM photo ORDER BY id ASC";
 
 $Query = mysqli_query($conn,$GetOldIdSQL);
 
 while($row = mysqli_fetch_array($Query)){
 
 $DefaultId = $row['id'];
 }
 
 $ImagePath = "$DefaultId.png";
 
 //$ServerURL = "http://192.168.1.106:80/Android/$ImagePath";
 $ServerURL = "http://192.168.1.106:80/Android/$ImagePath";


 $InsertSQL = "insert into photo (image_path,image_name) values ('$ServerURL','$ImageName')";
 
 if(mysqli_query($conn, $InsertSQL)){

 file_put_contents($ImagePath,base64_decode($ImageData));

 echo "Your Image Has Been Uploaded.";

 $update = "UPDATE employees set photo =  '$Image_Path' where image_name = '$ImageName'";


if(mysqli_query($conn,$update))
{
 //file_put_contents($ImagePath,base64_decode($ImageData));
 echo 'Data Submit Successfully';
 session_destroy();
 
 }


 }
 // $tt="truncate employees";
 // $Queryy = mysqli_query($conn,$tt);


 // $Sql_Query = "insert into employees(firstname,lastname,birthdate,contact_info,aadhar,pan,photo,image_name)  select f_name as firstname, l_name as lastname, dob as birthdate, mobile as contact_info,aadhar_no as aadhar,pan_no as pan, image_path as photo,p.image_name  from employee AS e INNER JOIN photo AS p ON e.image_name=p.image_name";

 // $Queryyy = mysqli_query($conn,$Sql_Query);

 // mysqli_close($conn);
  }else{
   echo "Not Uploaded";
  }

?>