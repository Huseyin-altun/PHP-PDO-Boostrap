<?php require_once 'boostrap.php'; ?>


<center>
<form method="post" action="">
    <input name="id" placeholder="id_gir">
    <input name="notS" placeholder="vıze notu gir">
    <input name="notO" placeholder="fınal notu gir">
    <input type="submit" class="btn btn-primary">




</form>








<?php
session_start();
include "baglan.php";
$id=$_POST['id'];
$notS=$_POST['notS'];
$notO=$_POST['notO'];


echo"<h4>NOT GİR</h4>";
$sql=$db->query("select * from ogrenci ",PDO::FETCH_ASSOC);

foreach ($sql as $satir) {

 $a =$satir['kulanıcı_id'];

    $sql=$db->query("select * from kulanici where id='$a' ",PDO::FETCH_ASSOC);

    foreach ($sql as $satir) {

        echo $a = "ID".$satir['id']." ISIM ".$satir['ad']."<BR>";

    }
}







    $query = $db->prepare("UPDATE ogrenci SET sınavnotu=?,odevnotu=?  WHERE id=? ");
    $insert = $query->execute(array(
      $notS,$notO,$id
    ));









?>
</center>
<style>
    html,body{
        background-image: url('images/bg.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;

    }
</style>
