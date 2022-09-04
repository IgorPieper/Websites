<?php

session_start();
require_once "PHP/laczenie_z_baza_danych.php";

if(!isset($_GET["id"])){
    header('Location: index.php');
}

?>


<!doctype html>
<html lang="pl">

<head>
    <meta charset="UTF-8">          <!-- Obsługiwanie Poliskich ogonków -->
    <meta name="description" content="Najlepszy sklep internetowy w sieci">         <!-- Opis strony -->
    <meta name="keywords" content="sklep, kamienie, Igor, PHP, studia, CTFlag{528fhshogrwrhgyu4wygpuqw3hrotypaty4}">        <!-- Słowa kluczowe -->
    <meta name="author" content="Igor Pieper">  <!-- Informacja o autorze -->
    <meta name="viewport" content="width=device-width, initial-scale=1">        <!-- To jest potrzebne aby bootstrap działał -->
    <title>Strona Logowania</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">      <!-- Dołączenie arkusza bootstrapowego -->
    <link rel="stylesheet" href="css/main.css">         <!-- Podpinamy kod Css -->
</head>

<body>

<header>
    <nav class="navbar bg-secondary navbar-dark navbar-expand-xl">      <!-- Górny panel  -->
        <a class="navbar-brand" href="index.php"><img src="grafiki/logo.png" width="30" height="30" alt="" class="logo">    The Sklep</a>       <!-- Logo Strony  -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainmenu">        <!-- Zwijanie górnego panelu  -->
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mainmenu">
            <ul class="navbar-nav">
                <li class="nav-item mr-3">
                    <a class="nav-link " href="index.php">Home</a>      <!-- Przycisk powrotu do strony głównej  -->
                </li>
            </ul>
            <form class="mr-1 mt-1 ml-auto" method="POST" action="koszyk.php">                <!-- Przycisk Koszyka  -->
                <button class="btn btn-light" type="submit"><img src="grafiki/kup.png" alt="szukaj" width="20" height="20" title="Koszyk"></button>
            </form>
            <form  class="mr-1 mt-1" method="POST" action="pole_logowania.php">                <!-- Przycisk logowania  -->
                <button class="btn btn-light" type="submit" name="logowanie"  id="loggowanie">
                    <?php
                    if(isset($_SESSION["logowanie"])){
                        echo '<img src="grafiki/logged.png" alt="szukaj" width="20" height="20">';
                    } else{
                        echo '<img src="grafiki/user.png" alt="szukaj" width="20" height="20">';
                    }
                    ?>
                </button>
            </form>
        </div>
    </nav>
</header>

<?php
echo "<script>";
if(isset($_SESSION['login'])) {
    echo 'document.getElementById("loggowanie").title="' . $_SESSION['login'] . '"';
} else{
    echo 'document.getElementById("loggowanie").title="Zaloguj się!"';
}
echo "</script>";
?>

<main>
    <div class="obrazy">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 mr-1 mt-1"></div>
                <div class="col-sm-4 mr-1 mt-1" style="text-align: center">
                    <?php
                    $login = $_SESSION["user_id"];
                    $id = $_GET["id"];
                    ?>
                    <form method="post" action="#">
                        <br><label>Twoja Opinia</label><br>
                        <textarea name="tresc" maxlength="777"></textarea><br><br>
                        <label>Ocena</label><br>
                        <input type="number" name="ocena" min="1" max="5"><br><br>
                        <input type="submit" value="Wyślij Opinię"><br><br>
                    </form>

                    <?php
                    if(isset($_POST["tresc"]) && isset($_POST["ocena"]) && !empty($_POST["tresc"]) && !empty($_POST["ocena"])){

                        $baza = connection();

                        $sql = "INSERT INTO `opinie`(`id`, `tresc`, `ocena`, `kamien_id`, `users_id`) VALUES ('','". $_POST["tresc"] ."','" . $_POST["ocena"] . "','" . $id . "','" . $login . "')";

                        $baza->query($sql);

                        header('Location: index.php');
                    }
                    ?>

                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>