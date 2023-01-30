<?php
// error_reporting(0);
// mysqli_report(MYSQLI_REPORT_OFF);
$mysqli = mysqli_connect('localhost', 'root','', 'laydiem50%');
    if(!$mysqli){
        echo 'Connection error: ' . mysqli_connect_error();
        exit();
    }
?>