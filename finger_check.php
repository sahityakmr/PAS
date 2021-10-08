<?php

if($_SERVER['REQUEST_METHOD']=='POST'){

    include 'DatabaseConfig.php';

    $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
    $FINGERSTRING = $_POST['Fg'];
    $latitude = $_POST['lat'];
    $longitude = $_POST['longi'];

    $Sql_Query = "select * from emp where fingerprint = '$FINGERSTRING' or fingerprint2 = '$FINGERSTRING' or fingerprint3 = '$FINGERSTRING' or fingerprint4 = '$FINGERSTRING' or fingerprint5 = '$FINGERSTRING' or fingerprint6 = '$FINGERSTRING' or fingerprint7 = '$FINGERSTRING' or fingerprint8 = '$FINGERSTRING' or fingerprint9 = '$FINGERSTRING' or fingerprint10 = '$FINGERSTRING' ";

    $check = mysqli_fetch_array(mysqli_query($con,$Sql_Query));
    $d=date_default_timezone_set("Asia/Calcutta");
    $date = date("Y-m-d");

    $time = date("H:i:s");
    if(isset($check)){

        //echo "Data Matched";

        $result = "select * from attendance_check where fingerprint = '$FINGERSTRING'";

        $roww = mysqli_fetch_array(mysqli_query($con,$result));

        if(((isset($roww))==0) and (isset($roww))==NULL)
        {
            $row = mysqli_fetch_array(mysqli_query($con,$Sql_Query));
            $firstname = $row['f_name'];
            $lastname = $row['l_name'];
            $mobile = $row['mobile'];
            $aadhar = $row['aadhar_no'];
            $pan = $row['pan_no'];
            $time = $row['time'];
            $id = $row['id'];
            $image = $row['image_name'];
            $latitude = $row['latitude'];
            $longitude = $row['longitude'];
            $fingerprint = $row['fingerprint'];
            $Sql = "insert into attendance_check(employee_id,time_in,date,latitude,longitude,fingerprint) values('$id',curtime(),curdate(),'$latitude','$longitude','$fingerprint')";
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
                $up = "update attendance_check set time_out =  '$time' where fingerprint = '$FINGERSTRING'";
                if(mysqli_query($con,$up))
                {
                    echo "Data updated";
                }
            }
            else
            {
                $row = mysqli_fetch_array(mysqli_query($con,$Sql_Query));

                $firstname = $row['f_name'];
                $lastname = $row['l_name'];
                $mobile = $row['mobile'];
                $aadhar = $row['aadhar_no'];
                $pan = $row['pan_no'];
                $time = $row['time'];
                $id = $row['id'];
                $image = $row['image_name'];
                $fingerprint = $row['fingerprint'];
                $Sql = "insert into attendance_check(employee_id,date,time_in,latitude,longitude,fingerprint) values('$id',CURDATE(),CURTIME(),'$latitude','$longitude','$fingerprint')";
                if(mysqli_query($con,$Sql))
                {

                    echo 'Data Matched';
                }
            }
        }


    }













    else{
        echo "Invalid FingerString Please Try Again";
    }
}
?>