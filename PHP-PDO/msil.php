<?php
session_start();
include 'baglan.php';
$gonderen=$_SESSION['email'];

$query = $db->query("SELECT * FROM omesaj WHERE gonderen='$gonderen' ", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
    foreach( $query as $t ){
     $t=$t['id'];

    }

$sil=$db->exec("DELETE from omesaj where id='$t'" );
}
header("location:OZELSOHBET.PHP");
