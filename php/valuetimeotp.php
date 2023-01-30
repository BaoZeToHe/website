<?php 
    include("Connection.php");
    session_start();

        $email = $_SESSION["email"];
        echo $email;
        $result = mysqli_query($mysqli,"SELECT id from `user` where '$email' = email");
        $check_id = "";
         if (!$result) {
            echo 'Could not run query: ' . mysql_error();
            exit;
        }
            $row = mysqli_fetch_row($result);
                        
        $check_id = $row[0]; 
            date_default_timezone_set("Asia/Ho_Chi_Minh");
            $_SESSION["start"] = date("Y-m-d H:i:s");
            $end_result = mysqli_query($mysqli,"SELECT authentication_time FROM user WHERE '$check_id' = id");
                if (!$end_result) {
                    echo 'Could not run query: ' . mysql_error();
                exit;
                }   
                else{ 
                    $row1 = mysqli_fetch_row($end_result);
                    $end = $row1[0];
                    $end_time = date("Y-m-d H:i:s",strtotime("+".$end."minutes",strtotime($_SESSION["start"])));   
                    $_SESSION["end_time"] = $end_time;
                }
?>