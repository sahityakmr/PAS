<?php
$response = [];
if(isset($_POST)){
    $response['failed'] = false;
include 'DatabaseConfig.php';
include 'guid.php'; 
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
 $a = guidv4();


//$i = uniqid($imageid, true);
 
//echo $imageid;

$new_GUID = createGUID();
//echo "GUID :: ".$new_GUID;



  $Sql_Query = "insert into employees (id,firstname,lastname,contact_info,aadhar,pan,birthdate,image_name,address,user_email,employee_id) values ('$a','$f_name','$l_name','$mobile','$aadhar_no','$pan_no','$dob','$imageid','$address','$supervisor','$new_GUID')";

 if(mysqli_query($con,$Sql_Query))
{
 
    $response['success'] = true;
    $response['body']['id'] = $a;
 //exit();
// session_destroy();
 
 }
 else{

 $response['success'] = false;
 //echo 'Try Again';
 
 }

 mysqli_close($con);

 }
else{    
   $response['failed'] = true;
}

echo json_encode($response);
$mobile = $_GET['$a'];
 $usertype = $_GET['$new_GUID'];

?>