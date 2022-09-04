<?php

session_start();
$id = $_GET["id"];

$_SESSION["koszyk"] = array_diff($_SESSION["koszyk"], [$id]);

header('Location: koszyk.php');

?>