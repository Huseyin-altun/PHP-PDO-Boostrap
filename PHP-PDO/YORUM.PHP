<?php require_once 'boostrap.php'?>


<center>
    <h3>YORUM EKLE</h3>

    <form method="post" action="">
        <input type="ad" name="kime" placeholder="adınız?"><br>
        <textarea name="yorum" rows="20" cols="40" placeholder="yorumunuzu yapın...." >

        </textarea><br>
        <input  type="submit" value="YORUMYAP" class="btn btn-primary">


    </form>
</center>

<?php
session_start();
include 'baglan.php';

$oturum=$_SESSION['email'];
$alıcı=trim(@$_POST['kime']);
$yorum=trim(@$_POST['yorum']);
if($_POST){
$query = $db->prepare("INSERT INTO yorum SET
yorum= ? ,mail= ?,alıcı=? ");
$insert = $query->execute(array(
    $yorum,$oturum,$alıcı
));
}

$query = $db->query("SELECT *  FROM yorum ", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
    foreach( $query as $t ){

        echo$t['mail']." "." ".":"." ".$t['yorum'].""."<br>";
    }


}

?>

<style>
    html,body{
        background-image: url('http://getwallpapers.com/wallpaper/full/f/9/b/137741.jpg#.Xs0_SxukJRw.link');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;

    }
</style>
