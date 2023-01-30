<?php
    include("Connection.php");
    session_start();
    $account = $_POST["account"];
    $password = $_POST["password"];
    
    $check_account = mysqli_query($mysqli,"SELECT *FROM USER WHERE '$account' = email");
    $index = mysqli_num_rows($check_account);
        if($index == 0){
            echo "Tài khoản của bạn chưa được đăng ký ";
            exit();
        }
        $check_password = mysqli_query($mysqli,"SELECT *FROM USER WHERE '$password' = password");
        $index = mysqli_num_rows($check_password);
        if($index == 0){
            echo "Mật Khẩu của bạn không trùng khớp";
        }
        else{
            // echo "Tài Khoản của bạn đã được đăng nhập";

            $_SESSION["check_account"] = "1";         
            echo $_SESSION["check_account"];
        }
?>