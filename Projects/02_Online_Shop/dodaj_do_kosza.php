<?php

session_start();

require_once "PHP/laczenie_z_baza_danych.php";

$id = $_GET["id"];

if(isset($_POST["ile"]) && !empty($_POST["ile"]) && $_POST["ile"]>1){
    for($i=0; $i<$_POST["ile"]; ++$i){
        array_push($_SESSION["koszyk"], $id);
    }
} else {
    array_push($_SESSION["koszyk"], $id);
}

header('Location: index.php');

?>