<?php
$host='localhost';
$uname='root';
$pwd='';
$db='apsystem';
$con = mysqli_connect($host,$uname,$pwd) or die("connection failed");
mysqli_select_db($con,$db) or die("db selection failed");

if($_GET['string1'])
{
$ia =$_GET['string1'];

$r=mysqli_query($con,"select description from position");
while($row=mysqli_fetch_assoc($r))
{
$cls[]=$row;
//echo $fin."<br>";
}
echo json_encode($cls);
}
mysqli_close($con);

?>