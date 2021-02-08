<?php include "baglan.php";
session_start();
$ad=$_POST['ad'];
$email=$_POST['email'];
$yetki_yts=1;
if($ad && $email && $_POST){
    $sorgu= $db->prepare("SELECT * FROM kulanici  WHERE  ad=? and email=? and yetki_yts=?");

$sorgu->execute(array($ad,$email,$yetki_yts));
    $islem=$sorgu->fetch();


    if($islem){
        $_SESSION['ad']= $islem['ad'];
        $_SESSION['email'] =$islem['email'];

        header("location:YTSindex.php");


    }


else {

header("location:index.php");


}








}


?>