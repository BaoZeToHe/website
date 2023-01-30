<?php 
    include("Connection.php");
session_start();
date_default_timezone_set("Asia/Ho_Chi_Minh");
$demthoigian = gmdate("H:i:s",strtotime($_SESSION["end_time"]) - strtotime(date("Y-m-d H:i:s")))."<br>" ;
$_SESSION["time"] = gmdate(strtotime($_SESSION["end_time"]) - strtotime(date("Y-m-d H:i:s"))) ;

    if(isset($_SESSION["time"])){
        if( $_SESSION["time"] > 0 ){
            echo $demthoigian;

                $email = $_SESSION["email"];
                $check_email =  mysqli_query($mysqli,"SELECT code from `user` where '$email' = email");
                if (!$check_email) {
                    echo 'Could not run query: ' . mysql_error();
                    exit;
                }
                $row = mysqli_fetch_row($check_email);
                if(empty($_SESSION['check_otp'])){
                    echo "Bạn Vui Lòng Nhập mã OTP";
                    exit();
                }
                if($row[0] != $_SESSION['check_otp']){
                    echo "Bạn Nhập không đúng mã OTP vui lòng nhập lại";
                    exit();
                }
                if($row[0] == $_SESSION['check_otp']){
                    echo "Tài khoản của bạn đã được đăng ký thành công,Vui lòng vào lại trang web để đăng nhập";
                    // mysqli_query($mysqli,"ALTER TABLE `user` DROP code");
                    $_SESSION['row1'] = 1 ;
                }
                
        }
        else{
            $demthoigian = "Bạn Đã Quá Thời Gian Nhập OTP."."<br>" ;
            echo $demthoigian;
            if($_SESSION['row1'] != 1){
                $delete_account = $_SESSION["email"];
                mysqli_query($mysqli,"DELETE from `user` WHERE '$delete_account' = email");
                echo "Bạn Đã Quá Thời Hạn Nhập OTP, Tài Khoản của bạn sẽ không được đăng ký. ";
            }   
            else{
                echo "Tài Khoản của bạn đã được đăng ký";
            }
        }
    }

?>