<?php
include 'baglan.php';

$oturum=$_SESSION['email'];
$query = $db->query("SELECT * FROM kulanici WHERE email='$oturum' ", PDO::FETCH_ASSOC);
if ( $query->rowCount() ) {
    foreach ($query as $t) {

        $kontro=$t['obs_menu']."<br>";
    }

}


















?>