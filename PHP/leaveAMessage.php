<?php
include("config.php");
$variable = explode(",", $_GET["q"]);
if($variable[0]!=""){
    $email = mysqli_real_escape_string($db,$variable[0]);
    $text = mysqli_real_escape_string($db,$variable[1]);
    sendMail($email,$text);
    $sql = "SELECT dejarMensaje('".$email."','".$text."');";
    $result = mysqli_query($db,$sql);
    $row = mysqli_fetch_array($result);
}
?>
