<?php

$nazwa = $_POST["nazwa"];
$hp = $_POST["hp"];
$opis = $_POST["opis"];
$wys = $_POST["wys"];

$baza = new mysqli("localhost", "root", "", "karty_ike");
if($baza->connect_error) {
    die("Connection failed");
}

$sql = "INSERT INTO `bohater`(`Nazwa`, `HP`, `Opis`, `Wystepowanie`) VALUES ('" . $nazwa . "', '" . $hp . "', '" . $opis . "', '" . $wys . "')";
$result2 = $baza->query($sql);

header('Location: dodaj_bohatera.php');

?>