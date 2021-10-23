<?php
 include 'DatabaseConfig.php';

$con = mysqli_connect($HostName, $HostUser, $HostPass, $DatabaseName);

function anyMatch($fp, $fingerprints){
    foreach ($fingerprints as $value) {
        if ($fp == $value)
            return true;
    }
    return false;
}

function markAttendance($id){
    include 'DatabaseConfig.php';

$con = mysqli_connect($HostName, $HostUser, $HostPass, $DatabaseName);

$d=date_default_timezone_set("Asia/Calcutta");
 $date = date("Y-m-d");

 $time = date("H:i:s");
     $latitude = 43.57;
    $longitude = 23.67;

 
 
 //$image_id = $check['image_name'];

 $result = "select * from attendance_check where id = '$id'";

  $roww = mysqli_fetch_array(mysqli_query($con,$result));

  if((isset($roww))==0) 
  {

             $Sql = "insert into attendance_check(id,time_in,date,latitude,longitude,fingerprint) values('$id',curtime(),curdate(),'$latitude','$longitude','$FINGERSTRING')";
             if(mysqli_query($con,$Sql))
             {
 
                echo 'Data Matched new';
             }
  }

   elseif(((isset($roww))>0))
   {
         $data_date=$roww['date'];



         if(((isset($roww))>0) and ($date == $data_date))
         {
            $up = "update attendance_check set time_out =  '$time' where id = '$id'";
            if(mysqli_query($con,$up))
            {
               echo "Data updated";
            }
         }
         else
            {
                $Sql = "insert into attendance_check(id,date,time_in,latitude,longitude,fingerprint,image_name) values('$id',CURDATE(),CURTIME(),'$latitude','$longitude','$fingerprint')";
                if(mysqli_query($con,$Sql))
               {
                
                echo 'Data Matched';
                }
            }
   }

}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    include 'DatabaseConfig.php';

    $con = mysqli_connect($HostName, $HostUser, $HostPass, $DatabaseName);


    //$FINGERSTRING = $_POST['Fg'];
    $FINGERSTRING = "s";
    // $latitude = $_POST['lat'];
    // $longitude = $_POST['longi'];
    $latitude = 43.57;
    $longitude = 23.67;

    $Sql_Query =$con->prepare("select latitude,longitude,fingerprint,fingerprint2,fingerprint3,fingerprint4,fingerprint5,fingerprint6,fingerprint7,fingerprint8,fingerprint9,fingerprint10,id from biometric");
    $Sql_Query->execute();
    

    $Sql_Query->bind_result($latitude,$longitude,$fingerprint,$fingerprint2,$fingerprint3,$fingerprint4,$fingerprint5,$fingerprint6,$fingerprint7,$fingerprint8,$fingerprint9,$fingerprint10,$id);

    while($Sql_Query->fetch()){
        $fingerprints = array();
        array_push($fingerprints,$fingerprint,$fingerprint2,$fingerprint3,$fingerprint4,$fingerprint5,$fingerprint6,$fingerprint7,$fingerprint8,$fingerprint9,$fingerprint10);
        if(anyMatch($FINGERSTRING, $fingerprints)){
            markAttendance($id);
            break;    
        }
    }
}
?>
