<?php include "baglan.php";
session_start();
$ad=trim(@$_POST['ad']);
$email=trim(@$_POST['email']);
$yetki_yts=1;

include "baglan.php";
session_start();
$ad = trim(@$_POST['ad']);
$email = trim(@$_POST['email']);
$yetki_zyr = 1;
if($ad && $email){
    $sorgu= $db->prepare("SELECT * FROM kulanici  WHERE  ad=? and email=? and yetki_zyr=?");

    $sorgu->execute(array($ad,$email,$yetki_zyr));
    $islem=$sorgu->fetch();


    if($islem){
        $_SESSION['ad']= $islem['ad'];
        $_SESSION['email'] =$islem['email'];

        header("location:ZTYindex.php");


    }


    else {

        header("location:index.php");


    }








}


?>