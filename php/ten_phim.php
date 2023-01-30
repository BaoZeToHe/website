<?php 
header('Content-Type: application/json; charset=utf-8');    
    include("Connection.php");
    if(isset($_POST["chon_ten_phim"])){

        $chon_ten_phim = $_POST["chon_ten_phim"];
        $check_theloaiphim =  mysqli_query($mysqli,"SELECT * from `movie` where name_movie LIKE '%$chon_ten_phim%'");
        $rows = mysqli_fetch_all($check_theloaiphim);
        echo json_encode($rows, JSON_UNESCAPED_UNICODE);    
    }
?>