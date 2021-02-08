<?php require_once 'boostrap.php'?>

    <h3>OZEL MESAJ </h3>

    <form method="post" action="">
        <select name="kulanici">

        <?php
        include 'baglan.php';
        $query = $db->query("SELECT * FROM kulanici", PDO::FETCH_ASSOC);
        if ( $query->rowCount() ){
        foreach( $query as $t ){

        echo'<option value="'.$t['email'].'">'.$t['email'].'</option>>';
        }


        }

        ?>
        </select><br>
        <textarea name="MESAJ" rows="5" cols="20" placeholder="Mesajınızı yazın....">
        </textarea>
        <br>
        <input  type="submit" value="MESAJ AT" class="btn btn-primary">
    </form>


<?php

session_start();

$gonderen=$_SESSION['email'];
$sohbet=$_POST['MESAJ'];
$alici=$_POST['kulanici'];






echo "<hr><h4>MESAJINIZ</h4>";
if($_POST){
    $query = $db->prepare("INSERT INTO omesaj SET mesaj=?,gonderen=?,alici=? ");
    $insert = $query->execute(array(
        $sohbet,$gonderen,$alici
    ));
}

$query = $db->query("SELECT * FROM omesaj WHERE gonderen='$gonderen' ORDER BY id DESC ", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
    foreach( $query as $t ){
            echo $t['alici']."\t epostalı kişiye gönderdin:\t".$t['mesaj']."\t <a href='msil.php'>sil</a>"."<br>";

    }


}echo "<hr><h4>GELEN MESAJ</h4>";
$query = $db->query("SELECT * FROM omesaj WHERE alici='$gonderen' ", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
    foreach( $query as $t ){

        echo $t['gonderen']."\t epostalı kişi gönderdi:\t".$t['mesaj']."<br>";
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