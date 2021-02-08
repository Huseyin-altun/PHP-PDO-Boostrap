<center>

    <h2>SINAV YUKLE  GOR DEGERLENDIR YORUM YAP </h2>






</center>

















<?php
include "baglan.php";
session_start();

echo"<h4>Yüklenen sınavlar</h4>";
$sql=$db->query("select * from sinavb ",PDO::FETCH_ASSOC);

foreach ($sql as $satir) {

    $a=$satir['dosyaadi'];

    echo"$a<a href='$a'> INDIR</a><br>";

}
?>
<h3>Dosya yükle</h3>

<form action="" method="post" name="resimyukle" enctype="multipart/form-data">
    <input type="file" name="resim"/><br/>
    <input type="text" name="resimaciklama"/><br/>
    <input type="submit" name="gonder" value="Resim yükle" class=" btn btn-dark"/>
</form>

<?php
if($_POST){



    $aciklama    =     trim(@$_POST["resimaciklama"]);
    $dosya_adi   =   trim(@$_FILES["resim"]["name"]);


    $uzanti=substr($dosya_adi,-4,4);


    $yeni_ad=$dosya_adi;


    if ($uzanti == ".jpg" || $uzanti=="pptx" ||  $uzanti=="docx" ||  $uzanti=="xlsx"  ||  $uzanti==".png"  ||  $uzanti=="jpeg" ||  $uzanti==".pdf"){
    if (move_uploaded_file($_FILES["resim"]["tmp_name"],$yeni_ad)) {
        echo 'Dosya başarıyla yüklendi.';

        $sorgu = $db->prepare("INSERT INTO sinavs SET dosyaadi=:dosyaadi,detay=:detay");
        $sorgu->execute(array(':dosyaadi' => $yeni_ad, ':detay' => $aciklama));
    }
}
}
include "YORUM.PHP";



?>

<?php



include 'puan.php';



?>



