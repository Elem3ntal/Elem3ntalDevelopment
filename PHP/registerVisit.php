<?php
include("config.php");
if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
    $ip = $_SERVER['HTTP_CLIENT_IP'];
} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
    $ip = $_SERVER['REMOTE_ADDR'];
}
$sql = "SELECT registrarVisita('".$ip."');";
echo $sql;
$result = mysqli_query($db,$sql);
$row = mysqli_fetch_array($result);
echo $row;
?>
