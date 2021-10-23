<?php
// session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    include 'DatabaseConfig.php';
    include 'guid.php';
    $con = mysqli_connect($HostName, $HostUser, $HostPass, $DatabaseName);
    $lat = $_POST['lat'];
    $longi = $_POST['longi'];
    $id = $_POST['id'];
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

    settype($lat, 'float');
    settype($longi, 'float');
    $imageid = $_POST['imageid'];
    $new_GUID = createGUID();


    $quert = "insert into biometric (latitude,longitude,fingerprint,fingerprint2,fingerprint3,fingerprint4,fingerprint5,fingerprint6,fingerprint7,fingerprint8,fingerprint9,fingerprint10,image_name,id) values ('$lat','$longi','$file','$file2','$file3','$file4','$file5','$file6','$file7','$file8','$file9','$file10','$imageid','$id')";
    if (mysqli_query($con, $quert)) {

        echo 'Data Submit Successfully';
    } else {

        echo 'Try Again';

    }
}

?>