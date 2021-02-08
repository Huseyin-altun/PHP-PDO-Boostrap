
<?php
require_once 'boostrap.php';
include 'YTSMENUYETKIBUL.PHP';
?>

<html>




<body>




<nav class="navbar navbar-default">
<div class="container-fluid">
<div class="navbar-header">
      <a class="navbar-brand" href="#">DİCLE UNIVERSITE</a>
    </div>
<ul class="nav navbar-nav">
<li class="active"><a  href="DERSYUKLE.php" >DERS YUKLE VE INDIR </a></li>
    <li ><a href="SINAVEKLE.php">SINAV EKLE SİL</a></li>
    <?php if($kontrol==1){
   echo'<li ><a href="KULANICITANIMLA.PHP"  >KULANICILAR TANIMLA ve ZIYARETCI KABUL ET</a></li>';
    }?>

<li ><a href="YORUM.PHP" >YORUM</a></li>
<li "><a href="SOHBET.PHP">GENEL SOHBET</a></li>
   <?php if($kontrol==0){
       echo '<li><a href="NOTGİR.PHP">  NOTVER</a></li>';
    }?>
   <li><a href="OZELSOHBET.PHP" >OZEL SOHBET</a></li>
   <li><a href="cıkıs.php" >Cıkıs Yap</a></li>
   </ul>
    </div>
</nav>


</body>


</html>






