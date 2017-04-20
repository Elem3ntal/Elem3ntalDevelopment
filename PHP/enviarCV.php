<?php

$message=bodyMail($type,$toName,$toMail);
$subject=typeMail($type,$toName);
// Always set content-type when sending HTML email
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
// More headers
$headers .= 'From: PIA(Products and Inventory Administred) elem3naldnt@gmail.com';
mail($toMail,$subject,$message,$headers);
return 1;
?>
