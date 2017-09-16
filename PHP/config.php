<?php
// to make new lines more easy to read
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'qweasdzxc123');
define('DB_DATABASE', 'Elem3ntalDevelopment');
$db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

function sendMail($toCopy,$text){
    try{
        $message=$text;
        $subject=explode('@',$toCopy,2)[0].', has send you a message';
        // Always set content-type when sending HTML email
        $headers = "MIME-Version: 1.0" . "\r\n";
        $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
        // More headers
        $headers .= 'From: Message elem3naldnt@gmail.com'. "\r\n" . 'Cc: ' .$toCopy;
        mail("javier08@hotmail.com",$subject,$message,$headers);
        return 1;
    }
    catch (Throwable $t) {
        echo 'error catched!: '.$t->getMessage();
        return 0;
    }
}
?>
