<?php

$mysqlsunucu = "localhost";
$mysqlkullanici = "root";
$mysqlsifre = "";
try {
$db= new PDO("mysql:host=$mysqlsunucu;dbname=dbo_uni;charset=utf8", $mysqlkullanici, $mysqlsifre);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}
catch(PDOException $e)
{
echo "Bağlantı hatası: " . $e->getMessage();
}
?>
