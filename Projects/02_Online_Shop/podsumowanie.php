<?php
session_start();
require_once "PHP/laczenie_z_baza_danych.php";

if(!isset($_SESSION["suma"])){
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
                <div class='col-sm-12 mr-1 mt-1' style="text-align: center">
                    <h1>Potwierdzenie</h1><hr style="border: 1px solid white">
                    <?php
                        echo '<div>Mail: ' . $_SESSION["mail"] . '</div>';
                        echo '<div>Numer Telefonu: ' . $_SESSION["dane"][0] . '</div>';
                        echo '<div>Imie i Nazwisko: ' . $_SESSION["dane"][1] . ' ' . $_SESSION["dane"][2] . '</div>';
                        echo '<div>Kraj: ' . $_SESSION["dane"][3] . '</div>';
                        echo '<div>Miasto: ' . $_SESSION["dane"][4] . '</div>';
                        echo '<div>Kod Pocztowy: ' . $_SESSION["dane"][5] . '</div>';
                        echo '<div>Ulica: ' . $_SESSION["dane"][6] . ' ' . $_SESSION["dane"][7] . '</div>';
                        echo '<div>Sposób Dostawy: ' . $_SESSION["dane"][8] . '</div>';
                        echo '<div>Łączna Kwota: ' . $_SESSION["dane"][9] . ' zł</div><br><br>';

                        echo '<div>Szacowany czas dostawy: 3 dni</div>';
                        echo '<div>Sposób płatności: Przy Odbiorze</div>';
                        echo '<div>Numer Zamówienia: ' . rand(100000, 999999999) . '</div>';

                        unset($_SESSION["koszyk"]);

                    ?>
                </div>
            </div>
        </div>
    </div>
    </div>
</main>

</body>
</html>