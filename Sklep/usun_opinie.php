<?php
require_once "PHP/laczenie_z_baza_danych.php";
session_start();

if(!isset($_GET["log"]) || !isset($_GET["ops"])){
    header('Location: index.php');
}

$log = $_GET["log"];
$ops = $_GET["ops"];

$baza = connection();

$sql = "DELETE opinie FROM `opinie` JOIN `users` ON users_id=users.id WHERE login='" . $log . "' AND tresc='" . $ops . "'";

$baza->query($sql);

header('Location: index.php');

?>