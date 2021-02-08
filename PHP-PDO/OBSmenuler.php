
<?php
 require_once 'boostrap.php';
include "OBSMENUYETKIBUL.PHP";
?>
<html>



<body>

<nav class="navbar navbar-default">
<div class="container-fluid">
<div class="navbar-header">
      <a class="navbar-brand" href="#">DİCLE UNIVERSITE</a>
    </div>
<ul class="nav navbar-nav">

<?php if($kontro==0){
   echo '<li><a href="VELIGOROGRENCI.php">OGRENCI BILGILERINI GOR HOCASINI GOR VE PUAN VER</a></li>';
    }
    ?>

    <?php if($kontro==1){
 echo'<li><a href="ödevigör.php">VERILEN ODEVLER INDIR VE YUKLE</a></li>';

    echo' <li><a href="SINAVGOR.php">VERILEN SINAVLARI INDIR VE YUKLE </a></li>';
 }
    ?>
  
    <li><a href="YORUM.PHP">YORUM</a></li>
    <li><a href="OZELSOHBET.PHP">OZEL SOHBET</a></li>
    <li><a href="SOHBET.PHP">GENEL SOHBET</a></li>
    <li><a href="cıkıs.php">Cıkıs Yap</a></li>

</ul>
</div>
</nav>


</body>


</html>






