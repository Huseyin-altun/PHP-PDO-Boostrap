<?php include "baglan.php";
session_start();
$ad=$_POST['ad'];
$email=$_POST['email'];
$yetki_obs=1;
if($ad && $email){
    $sorgu= $db->prepare("SELECT * FROM kulanici  WHERE  ad=? and email=? and yetki_obs=?");

    $sorgu->execute(array($ad,$email,$yetki_obs));
    $islem=$sorgu->fetch();


    if($islem){
        $_SESSION['ad']= $islem['ad'];
        $_SESSION['email'] =$islem['email'];

        header("location:OBSindex.php");


    }


    else {

        header("location:index.php");


    }








}


?>