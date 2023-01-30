<?php
    session_start();
    if(isset($_SESSION["check_account"])){
        session_destroy();
    }
    header("Location:http://localhost/50%25(700k)/mainpage.html");

?>