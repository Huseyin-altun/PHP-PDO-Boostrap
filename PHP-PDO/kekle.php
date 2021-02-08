<?php



include "baglan.php";
$query = $db->query("SELECT * FROM kziyaret", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
    foreach( $query as $row ){
        $ad=$row['ad'];
        $soyad=$row['soyad'];
        $email=$row['email'];


    }
    $ekled=$db->prepare("INSERT INTO kulanici set ad =?,soyad=?,email=?,yetki_zyr=1");
    $ekled->execute(array($ad,$soyad,$email));

}


header("location:KULANICITANIMLA.PHP");




?>