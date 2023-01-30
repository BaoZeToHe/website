<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
session_start();
//Load Composer's autoloader
require 'vendor/autoload.php';


    include("Connection.php");
        $email = $_POST["email"];
        $name = $_POST["name"];
        $password = $_POST["password"];
        $id = 0 ;


        //check email
            $check_email =  mysqli_query($mysqli,"SELECT email from `user` where '$email' = email");
            $index = mysqli_num_rows($check_email);
                if($index != 0){
                    echo "email của bạn đã được đăng ký , Vui lòng kiếm tra lại thông tin";
                    exit();
                }
        //

            $mail = new PHPMailer(true);
            $code = rand(1000,9999);
            $insert_sql = "INSERT INTO `user` (id,name,password,email,code,`authentication_time`) VALUES ('$id','$name','$password','$email','$code','5')";
                if(mysqli_query($mysqli,$insert_sql)){
                    //otp gmail
                        $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
                        $mail->isSMTP();                                            //Send using SMTP
                        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
                        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
                        $mail->Username   = 'bao01685496933@gmail.com';                     //SMTP username
                        $mail->Password   = 'rrlnxedckufznwzb';                               //SMTP password
                        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
                        $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
                    
                        //Recipients
                        $mail->From = "bao01685496933@gmail.com";

                        $mail->setFrom('bao01685496933@gmail.com');
                        $mail->addAddress($email);     //Add a recipient
                    

                        //Content
                        $mail->isHTML(true);                                  //Set email format to HTML
                        $mail->Subject = 'Here is the subject';
                        $mail->Body    = 'This is the HTML message body code :  <b class = "red">'.'http://localhost/50%25(700k)/php/timecodegmail.php?email='.$email .'</b>' ."<br>" . "code : " . "<b>" . $code . "</b>";
   
                    if($mail->send()) {
                        echo 'Message has been sent';
                    } 
                    else {
                        echo 'Message could not be sent.';
                        echo 'Mailer Error: ' . $mail->ErrorInfo;
                        exit();
                    }
                    include("valuetimeotp.php");

                }
                else {
                    echo "Error: " .  $insert_sql . "<br>" . mysqli_error($mysqli);
                }

?>


