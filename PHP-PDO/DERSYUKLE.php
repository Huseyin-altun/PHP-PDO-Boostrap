



<?php require_once 'boostrap.php'?>

<center><h3>ÖDEV YÜKLE</h3></center>

<form action="" method="post" name="resimyukle" enctype="multipart/form-data" >
    <input type="file" name="resim" ><br/>
    <input type="text" name="resimaciklama"/><br/>
    <input type="submit" name="gonder" value="Dosya yükle" class="btn btn-dark"/>
</form>
<?php
session_start();
include "baglan.php";
echo"<h4>Yüklenen ödevler</h4>";
$sql=$db->query("select * from verilenodev",PDO::FETCH_ASSOC);

foreach ($sql as $satir) {

    $a=$satir['dosyaadi'];

    echo"$a <a href='$a' class=\"btn btn-success\">Download(indir)</a><br>";

}


?>


<?php

if($_POST){



$aciklama    =     $_POST["resimaciklama"];
$dosya_adi   =    $_FILES["resim"]["name"];


$uzanti=substr($dosya_adi,-4,4);


$yeni_ad=$dosya_adi;


    if ($uzanti == ".jpg" || $uzanti=="pptx" ||  $uzanti=="docx" ||  $uzanti=="xlsx"  ||  $uzanti==".png"  ||  $uzanti=="jpeg" ||  $uzanti==".pdf"){
if (move_uploaded_file($_FILES["resim"]["tmp_name"],$yeni_ad)) {
    echo 'Dosya başarıyla yüklendi.';

    $sorgu = $db->prepare("INSERT INTO gonderilenodev SET dosyaadi=:dosyaadii,detay=:detayi");
    $sorgu->execute(array(':dosyaadii' => $yeni_ad, ':detayi' => $aciklama));
}
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