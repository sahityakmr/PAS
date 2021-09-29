<?php
$dbName = "apsystem";
$user = "root";
$pwd = "";
$host = "localhost";
$cnn = new PDO('mysql:dbname='.$dbName.';host='.$host, $user, $pwd);

Fetching and Sending the request to GCM

Next we have to post request to server using gcm.php which will insert the token and retrieve it while sending notification.


prepare($query);
 $stmt->bindParam(1, $token);
 $stmt->execute();
 echo("Insert success");
}
//Check exists token
function isExistToken($cnn, $token)
{
 $query = "SELECT * FROM deviceinfo WHERE TOKENID = ?";
 $stmt = $cnn->prepare($query);
 $stmt->bindParam(1, $token);
 $stmt->execute();
 $rowcount = $stmt->rowCount();
 return $rowcount;
}
?>