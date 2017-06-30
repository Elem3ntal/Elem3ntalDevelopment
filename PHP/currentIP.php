<?php
if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
    $ip = $_SERVER['HTTP_CLIENT_IP'];
} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
    $ip = $_SERVER['REMOTE_ADDR'];
}
$details = json_decode(file_get_contents("http://ipinfo.io/{$ip}/json"));
echo "<p>IP: ".$ip."</p><br>";
echo "<p>City: ". $details->city."</p><br>";
echo "<p>Country: ". $details->country."</p><br>";
?>
