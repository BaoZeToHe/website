<?php 
session_start();
$_SESSION["email"] = $_GET["email"];
include("Connection.php");

?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
</head>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_POST['input_checkotp'])){
        $_SESSION['check_otp'] = $_POST['input_checkotp'];
    }
}
?>
<div id = "test"></div>
<form method="post" >  
    <input type="number" class="OTPGMAIL" name="quantity" min="0" max="9">
    <input type="number" class="OTPGMAIL" name="quantity" min="0" max="9">
    <input type="number" class="OTPGMAIL" name="quantity" min="0" max="9">
    <input type="number" class="OTPGMAIL" name="quantity" min="0" max="9">
    <input type = "hidden" id = "input_checkotp" name = "input_checkotp">
    <input type = "submit" class="checkotp" value="Submit">
</from>

<script type = "text/javascript">
    var myInterval = setInterval(myTimer, 1000);
    function myTimer() {
        let i = new XMLHttpRequest();
        i.open("GET","test2.php",false);
        i.send(null);
        document.getElementById("test").innerHTML =  i.responseText;    
    }
 
    $(".checkotp").click(function(){
        let x = $(".OTPGMAIL").length ;
        var a = "";
        for(let k = 0 ; k < x ; k++){
            a += document.getElementsByClassName("OTPGMAIL")[k].value;
        }
        document.getElementById("input_checkotp").value = a ;
    });
</script>




