<?php


include 'baglan.php';
if ($_POST) {
    $ad = $_POST["ad"];
    $soyad = $_POST["soyad"];
    $email = $_POST["email"];


    $ekled = $db->prepare("INSERT INTO kziyaret set ad =?,soyad=?,email=?");
    $ekled->execute(array($ad, $soyad, $email));


}

?>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container register-form">
    <div class="form">
        <div class="note">
            <p>KAYIT OLMAK ICIN FORMU DOLDURUN # EDİT : HÜSEYİN ALTUN </p>
        </div>

        <div class="form-content">
            <form method="post">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" class="form-control"  name="ad" placeholder="Adınız*" value=""/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="soyad"  placeholder="Soyadınız *" value=""/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <input type="text" class="form-control"    name="email"   placeholder="Emailiniz" value=""/>
                    </div>

                </div>
            </div>
            <button type="submit" class="btnSubmit">Submit</button>
            </form>
        </div>
    </div>
</div>
<style>.note
    {
        text-align: center;
        height: 80px;
        background: -webkit-linear-gradient(left, #0072ff, #8811c5);
        color: #fff;
        font-weight: bold;
        line-height: 80px;
    }
    .form-content
    {
        padding: 5%;
        border: 0px solid #ced4da;
        margin-bottom: 2%;
    }
    .form-control{
        border-radius:1.5rem;
    }
    .btnSubmit
    {
        border:none;
        border-radius:1.5rem;
        padding: 1%;
        width: 20%;
        cursor: pointer;
        background: #0062cc;
        color: #fff;
    }</style>

<style>
    html,body{
        background-image: url('images/bg.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        height: 100%;
        font-family: 'Numans', sans-serif;

    }
</style>

























