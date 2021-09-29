<?php 
 

 
 //database constants
 define('DB_HOST', 'localhost');
 define('DB_USER', 'root');
 define('DB_PASS', '');
 define('DB_NAME', 'apsystem');
 
 //connecting to database and getting the connection object
 $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
 
 //Checking if any error occured while connecting
 if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
 
 //creating a query

 $xyz=$conn->prepare("select e.aadhar_no,e.f_name,e.l_name,e.mobile,e.image_name,p.image_path from employee AS e INNER JOIN photo AS p ON e.image_name=p.image_name;");
 $xyz->execute();
 $xyz->bind_result($f_name,$aadhar_no,$l_name, $mobile, $image_name,$image_path);
 $pro = array();

 while($xyz->fetch()){
 $temp2 = array();
 $temp2['aadhar_no'] = $aadhar_no; 
 $temp2['f_name'] = $f_name; 
 $temp2['l_name'] = $l_name;
 $temp2['mobile'] = $mobile;
 $temp2['image_name'] = $image_name;
 $temp2['image_path'] = $image_path; 
 array_push($pro, $temp2);
 }



 
 echo json_encode($pro);