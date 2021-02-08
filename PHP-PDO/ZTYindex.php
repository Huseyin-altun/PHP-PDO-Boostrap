<?php
include "baglan.php";
session_start();

if(isset($_SESSION['ad'] )){
    include "ZTYmenuler.php";


}

else{

    header("location:ZİYARETCİ.php");
}
?>



<style>
    html,body{
        background-image: url('images/bg.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;
        opacity: 90%;
    }
</style>