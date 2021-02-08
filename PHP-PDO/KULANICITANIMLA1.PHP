
<?php
include "baglan.php";
if($_POST)

{
    $ad = $_POST["ad"];
    $soyad = $_POST["soyad"];
    $email = $_POST["email"];
    $yetki_yts = $_POST["yetki_yts"];
    $yetki_obs =$_POST["yetki_obs"];
    $yts_menu= $_POST["yts_menu"];
    $obs_menu= $_POST["obs_menu"];

    $ekled=$db->prepare("INSERT INTO kulanici set ad=?,soyad=?,email=?,yetki_yts=?,yetki_obs =?,yts_menu=?,obs_menu=?");
    $ekled->execute(array($ad,$soyad,$email,$yetki_yts,$yetki_obs,$yts_menu,$obs_menu));


}


?>

<form action="" method="post"  class="form-control-sm">
    <hr><H1>kulanıcı ekle</h1>
    ad:<br><input type="text" name="ad"  ></br>
    soyad:<br><input type="text" name="soyad"/></br>
    email:<br><input type="email" name="email"/></br>
    yetki_yts:<br><input type="text" name="yetki_yts"/></br>
    yetki_obs:<br><input type="text" name="yetki_obs"/></br>
    obs_menu:<br><input type="text" name="obs_menu"/></br>
    yts_menu:<br><input type="text" name="yts_menu"/></br>



    </br><input type="submit" value="Gönder" class="btn btn-primary"/><br>
</form>





</center>