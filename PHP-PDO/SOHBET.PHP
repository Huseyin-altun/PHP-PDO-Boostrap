<?php require_once 'boostrap.php'?>


<center>
    <h3>GENEL SOHBET</h3>

    <form method="post" action="">
        <input type="email" name="kime" placeholder="kime...?"><br>
        <textarea name="sohbet" rows="10" cols="80" placeholder="yorumunuzu yapın....">

        </textarea><br>
        <input  type="submit" value="MESAJ GONDER" class="btn btn-primary">


    </form>
</center>

<?php
session_start();
include 'baglan.php';

$oturum=$_SESSION['email'];
$alıcı=trim(@$_POST['kime']);
$sohbet=trim(@$_POST['sohbet']);
if($_POST){
    $query = $db->prepare("INSERT INTO sohbet SET
sohbet= ? ,mail= ?,alıcı=? ");
    $insert = $query->execute(array(
        $sohbet,$oturum,$alıcı
    ));
}

$query = $db->query("SELECT * FROM sohbet ", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
    foreach( $query as $t ){

        echo$t['mail']." "." ".":"." ".$t['sohbet']."___".$t['alıcı']." ___ADLI KISIYE"."<br>";
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
