<?php require_once 'boostrap.php'?>

<center>

    <h2> KULANICI TANIMLA VE ZIYARETCI  AL </h2>

    <h3>ziyaretci tablosu</h3>
<?php
include 'baglan.php';
session_start();

$query = $db->query("SELECT * FROM kziyaret ORDER BY ad DESC", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
    foreach( $query as $row ){
        $deger=$row['id'];
        $row["ad"];
        echo"<h5>Adı: \t $row[ad]  \t Soyadı: \t $row[soyad] \t </h5><a href='ksil.php' class=\"btn btn-danger\">sil</a>\t<a href='kekle.php' class=\"btn btn-success\">ekle</a><br> ";

    }
}

?>







<?php

include "KULANICITANIMLA1.PHP";
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





