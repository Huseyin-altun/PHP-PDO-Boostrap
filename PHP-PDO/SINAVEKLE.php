<?php require_once 'boostrap.php'?>



    <center><h3>SINAV YÜKLE</h3></center>

<form action="" method="post" name="resimyukle" enctype="multipart/form-data">
    <input type="file" name="resim"/><br/>
    <input type="text" name="resimaciklama"   placeholder="açıklama"><br/>
    <input type="submit" name="gonder" value="Dosya Yükle" class="btn btn-dark"/>
</form>
<?php
session_start();
include "baglan.php";
echo"<h4>Yüklenen sınavlar</h4>";
$sql=$db->query("select * from sinavs",PDO::FETCH_ASSOC);

foreach ($sql as $satir) {

    $a=$satir['dosyaadi'];

    echo"$a<a href='$a' class=\"btn btn-success\">INDIR</a><br>";

}


?>


<?php

if($_POST) {


    $aciklama = $_POST["resimaciklama"];
    $dosya_adi = $_FILES["resim"]["name"];


    $uzanti = substr($dosya_adi, -4, 4);


    $yeni_ad = $dosya_adi;


    if ($uzanti == ".jpg" || $uzanti=="pptx" ||  $uzanti=="docx" ||  $uzanti=="xlsx"  ||  $uzanti==".png"  ||  $uzanti=="jpeg" ||  $uzanti==".pdf") {
        if (move_uploaded_file($_FILES["resim"]["tmp_name"], $yeni_ad)) {
            echo 'Dosya başarıyla yüklendi.';

            $sorgu = $db->prepare("INSERT INTO sinavb SET dosyaadi=:dosyaadi,detay=:detay");
            $sorgu->execute(array(':dosyaadi' => $yeni_ad, ':detay' => $aciklama));
        }
    }
    else{

        echo 'hatalı';
    }

}


?>

<style>
    html,body{
        background-image: url('images/bg.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;

    }
</style>
