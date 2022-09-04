<?php

session_start();

require_once "PHP/laczenie_z_baza_danych.php";

$baza = connection();
$sql="SELECT id, login, haslo, mail, ranga FROM users WHERE login='". $_POST["login"] . "' AND haslo='" . $_POST["haslo"] . "'";

$result = $baza->query($sql);
$wynik = $result->num_rows;

if($wynik>0){
    $_SESSION["logowanie"]="lol";
    while ($row = $result->fetch_assoc()) {
        $_SESSION["user_id"]=$row["id"];
        $_SESSION["login"]=$row["login"];
        $_SESSION["mail"]=$row["mail"];
        $_SESSION["ranga"]=$row["ranga"];
    }
}

header('Location: pole_logowania.php');

?>