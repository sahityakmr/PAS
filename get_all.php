<?php

if (isset($_POST)) {
    $empId = $_POST['empId'];
    include 'DatabaseConfig.php';

    $con = mysqli_connect($HostName, $HostUser, $HostPass, $DatabaseName);

   $xyz=$con->prepare("select id,fingerprint,fingerprint2,fingerprint3,fingerprint4,fingerprint5,fingerprint6,fingerprint7,fingerprint8,fingerprint9,fingerprint10 from biometric where id=(select id from employees where employee_id='$empId')");
    $xyz->execute();
    $xyz->bind_result($id,$fingerprint,$fingerprint2,$fingerprint3,$fingerprint4,$fingerprint5,$fingerprint6,$fingerprint7,$fingerprint8,$fingerprint9,$fingerprint10);
    $aa = array();
    while($xyz->fetch()){
    $temp2 = array();
    $temp2['id'] = $id;
    $temp2['fingerprint'] = $fingerprint;
    $temp2['fingerprint2'] = $fingerprint2;
    $temp2['fingerprint3'] = $fingerprint3;
    $temp2['fingerprint4'] = $fingerprint4;
    $temp2['fingerprint5'] = $fingerprint5;
    $temp2['fingerprint6'] = $fingerprint6;
    $temp2['fingerprint7'] = $fingerprint7;
    $temp2['fingerprint8'] = $fingerprint8;
    $temp2['fingerprint9'] = $fingerprint9;
    $temp2['fingerprint10'] = $fingerprint10;

        echo json_encode($temp2);
        break;
}

}
?>