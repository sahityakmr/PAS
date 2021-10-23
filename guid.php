<?php
// create GUID
function createGUID()
{
if (function_exists('com_create_guid'))
{
return com_create_guid();
}
else
{
mt_srand((double)microtime()*10000);
//optional for php 4.2.0 and up.
$set_charid = strtoupper(md5(uniqid(rand(), true)));
$set_hyphen = chr(45);
// "-"
$set_uuid = chr(123)
.substr($set_charid, 0, 8).$set_hyphen
.substr($set_charid, 8, 4).$set_hyphen
.substr($set_charid,12, 4).$set_hyphen
.substr($set_charid,16, 4).$set_hyphen
.substr($set_charid,20,12)
.chr(125);
// "}"
return trim($set_uuid,"{}");
}
}
 $new_GUID = createGUID();
// echo "GUID :: ".$new_GUID;
echo $new_GUID;
function guidv4()
{
    if (function_exists('com_create_guid') === true)
        return trim(com_create_guid(), '{}');

    $data = openssl_random_pseudo_bytes(16);
    $data[6] = chr(ord($data[6]) & 0x0f | 0x40); // set version to 0100
    $data[8] = chr(ord($data[8]) & 0x3f | 0x80); // set bits 6-7 to 10
    return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
}
 $a = guidv4();
echo $a;
header("Location: http://www.example.com/another-page.php");
 exit();
?>