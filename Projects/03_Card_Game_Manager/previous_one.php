<?php

session_start();

$_SESSION["id_start"] -= 25;

if (!isset($_SESSION["loc"])){
    $_SESSION["loc"] = "show.php";
}

header('Location: ' . $_SESSION["loc"]);

?>