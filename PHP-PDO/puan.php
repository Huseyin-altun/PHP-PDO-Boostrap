<center>
    <h3>PUAN VER</h3>

    <form method="post" action="">
        <input type="number" name="puan" placeholder="1-5"><br>
        <input  type="submit" value="OYLA" class="btn-warning">


    </form>
</center>

<?php




session_start();
include 'baglan.php';


$oturum=$_SESSION['email'];
$puan=trim(@$_POST['puan']);
if($_POST && $puan<6){
    $query = $db->prepare("INSERT INTO degerlendirme SET
puan= ? , oturum= ?");
    $insert = $query->execute(array(
        $puan,$oturum
    ));


$query = $db->query("SELECT * FROM degerlendirme  ", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
    foreach( $query as $t ){

        echo$t['oturum']."\tpuanı\t".$t['puan']."<br>";
    }


}
}














?>
