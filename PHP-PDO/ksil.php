


<?php
include "baglan.php";
$query = $db->query("SELECT * FROM kziyaret", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
    foreach( $query as $row ){
        $deger=$row['id'];

    }
    $sil=$db->exec("DELETE from kziyaret where id='$deger'");
}




header("location:KULANICITANIMLA.PHP");




?>