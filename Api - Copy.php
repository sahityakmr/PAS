<?php 
 

 
 //database constants
 define('DB_HOST', 'localhost');
 define('DB_USER', 'root');
 define('DB_PASS', 'abc@123');
 define('DB_NAME', 'android');
 
 //connecting to database and getting the connection object
 $conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
 
 //Checking if any error occured while connecting
 if (mysqli_connect_errno()) {
 echo "Failed to connect to MySQL: " . mysqli_connect_error();
 die();
 }
 
 //creating a query
 $stmt = $conn->prepare("SELECT aadhar_no,f_name,mobile,image_name,l_name FROM employee;");

 //executing the query 
 $stmt->execute();

 //binding results to the query 
// $stmt->bind_result($id, $title, $shortdesc, $rating, $price, $image,$l_name);

 $stmt->bind_result($f_name, $mobile, $aadhar_no, $image_name,$l_name);
 
 
 $products = array(); 
 
 //traversing through all the result 
 while($stmt->fetch()){
 $temp = array();
 $temp['f_name'] = $f_name; 
 $temp['mobile'] = $mobile; 
 $temp['aadhar_no'] = $aadhar_no; 
 $temp['image_name'] = $image_name;
 $temp['l_name'] = $l_name; 
 array_push($products, $temp);
 }
 //displaying the result in json format 
 echo json_encode($products);


 $abc=$conn->prepare("SELECT image_path FROM photo;");
 $abc->execute();
 $abc->bind_result($image_path);
 $product = array();
 while($abc->fetch()){
 $temp1 = array();
 $temp1['image_path'] = $image_path; 
 array_push($product, $temp1);
 }
 echo json_encode($product);
 
 $xyz=$conn->prepare("select e.aadhar_no,e.f_name,e.l_name,e.mobile,e.image_name,p.image_path from employee AS e INNER JOIN photo AS p ON e.image_name=p.image_name;");
 $xyz->execute();
 $xyz->bind_result($aadhar_no,$f_name,$l_name, $mobile, $image_name,$image_path);
 $pro = array();

 while($xyz->fetch()){
 $temp2 = array();
 $temp2['aadhar_no'] = $aadhar_no; 
 $temp2['f_name'] = $f_name; 
 $temp2['l_name'] = $l_name; 
 $temp2['image_name'] = $image_name;
 $temp2['image_path'] = $image_path; 
 array_push($pro, $temp2);
 }



 
 echo json_encode($pro);