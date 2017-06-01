<?php
include("config.php");
$sql = "select count(*) from visitas;";
$result = mysqli_query($db,$sql);
$row = mysqli_fetch_array($result);
echo $row[0];
?>
