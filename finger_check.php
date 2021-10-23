<?php
include 'DatabaseConfig.php';
//include 'utils.php';

$response = [];

function markAttendance($id, $latitude, $longitude)
{
    include 'DatabaseConfig.php';
    $response['success'] = true;

    $con = mysqli_connect($HostName, $HostUser, $HostPass, $DatabaseName);

    $d = date_default_timezone_set("Asia/Calcutta");
    $date = date("Y-m-d");

    $time = date("H:i:s");

    //$image_id = $check['image_name'];

    $result = "select * from attendance_check where id = '$id'";

    $roww = mysqli_fetch_array(mysqli_query($con, $result));

    if ((isset($roww)) == 0) {

        $Sql = "insert into attendance_check(id,time_in,date,latitude,longitude,fingerprint) values('$id',curtime(),curdate(),'$latitude','$longitude','dummy')";
        if (mysqli_query($con, $Sql)) {

            $response['action'] = 'TIME_IN';
        }
    } elseif (((isset($roww)) > 0)) {
        $data_date = $roww['date'];


        if (((isset($roww)) > 0) and ($date == $data_date)) {
            $up = "update attendance_check set time_out =  '$time' where id = '$id'";
            if (mysqli_query($con, $up)) {
                $response['action'] = 'TIME_OUT';
            }
        } else {
            $Sql = "insert into attendance_check(id,date,time_in,latitude,longitude,fingerprint,image_name) values('$id',CURDATE(),CURTIME(),'$latitude','$longitude','dummy')";
            if (mysqli_query($con, $Sql)) {

                $response['action'] = 'TIME_IN';
            }
        }
    }else{
        $response['success'] = false;
    }

}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $id = $_POST['id'];
    $latitude = $_POST['lat'];
    $longitude = $_POST['longi'];
    markAttendance($id, $latitude, $longitude);
    echo json_encode($response);
}
?>
