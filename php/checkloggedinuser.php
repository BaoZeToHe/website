<?php
// include("checklogin.php");
    session_start();
    echo json_encode( $_SESSION["check_account"]);
?>