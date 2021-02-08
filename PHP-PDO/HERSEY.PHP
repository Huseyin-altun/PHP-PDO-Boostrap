

<?php
include'puan.php' ;
?>
<?php
include "SOHBET.PHP";
?>
<?php

include "baglan.php";
echo "<h4>Yüklenen ödevler</h4>";
$sql = $db->query("select * from verilenodev", PDO::FETCH_ASSOC);

foreach ($sql as $satir) {

    $a = $satir['dosyaadi'];

    echo "$a<a href='$a'>INDIR</a><br>";

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






