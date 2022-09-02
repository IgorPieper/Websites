<?php

session_start();

$_SESSION["id_start"] += 25;

header('Location: show.php');

?>