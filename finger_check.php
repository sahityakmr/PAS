<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    include 'DatabaseConfig.php';

    $con = mysqli_connect($HostName, $HostUser, $HostPass, $DatabaseName);
    $FINGERSTRING = $_POST['Fg'];
    $latitude = $_POST['lat'];
    $longitude = $_POST['longi'];

    $Sql_Query = "select * from biometric";
    //$Sql_Query = "select * from biometric where fingerprint = '$FINGERSTRING' or fingerprint2 = '$FINGERSTRING' or fingerprint3 = '$FINGERSTRING' or fingerprint4 = '$FINGERSTRING' or fingerprint5 = '$FINGERSTRING' or fingerprint6 = '$FINGERSTRING' or fingerprint7 = '$FINGERSTRING' or fingerprint8 = '$FINGERSTRING' or fingerprint9 = '$FINGERSTRING' or fingerprint10 = '$FINGERSTRING' ";

    $check = mysqli_fetch_array(mysqli_query($con, $Sql_Query));

    //echo json_encode($check);
    $d = date_default_timezone_set("Asia/Calcutta");
    $date = date("Y-m-d");

    $time = date("H:i:s");
    if (isset($check)) {

        //echo "Data Matched";
        $image_id = $check['image_name'];

        $result = "select * from attendance_check where image_name = '$image_id'";

        $roww = mysqli_fetch_array(mysqli_query($con, $result));

        if ((isset($roww)) == 0) {
            $row = mysqli_fetch_array(mysqli_query($con, $Sql_Query));
            $firstname = $row['f_name'];
            $lastname = $row['l_name'];
            $mobile = $row['mobile'];
            $aadhar = $row['aadhar_no'];
            $pan = $row['pan_no'];
            $time = $row['time'];
            $id = $row['id'];
            // $image = $row['image_name'];
            //$latitude = $row['latitude'];
            //$longitude = $row['longitude'];
            $fingerprint = $row['fingerprint'];

            $Sql = "insert into attendance_check(employee_id,time_in,date,latitude,longitude,fingerprint,image_name) values('$id',curtime(),curdate(),'$latitude','$longitude','$fingerprint','$image_id')";
            if (mysqli_query($con, $Sql)) {

                echo 'Data Matched new';
            }
        } elseif (((isset($roww)) > 0)) {
            $data_date = $roww['date'];


            if (((isset($roww)) > 0) and ($date == $data_date)) {
                $up = "update attendance_check set time_out =  '$time' where image_name = '$image_id'";
                if (mysqli_query($con, $up)) {
                    echo "Data updated";
                }
            } else {
                $row = mysqli_fetch_array(mysqli_query($con, $Sql_Query));

                $firstname = $row['f_name'];
                $lastname = $row['l_name'];
                $mobile = $row['mobile'];
                $aadhar = $row['aadhar_no'];
                $pan = $row['pan_no'];
                $time = $row['time'];
                $id = $row['id'];
                $image = $row['image_name'];
                $fingerprint = $row['fingerprint'];
                $Sql = "insert into attendance_check(employee_id,date,time_in,latitude,longitude,fingerprint,image_name) values('$id',CURDATE(),CURTIME(),'$latitude','$longitude','$fingerprint','$image_id')";
                if (mysqli_query($con, $Sql)) {

                    echo 'Data Matched';
                }
            }
        } else {
            echo "Try again";
        }


    } else {
        echo "Invalid FingerString Please Try Again";
    }
} else {
    echo "went wrong";
}
?>