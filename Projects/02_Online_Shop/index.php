<?php

session_start();

if(!isset($_SESSION["koszyk"])){
    $koszyk = array();
    $_SESSION["koszyk"]=$koszyk;
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

    <title>Sklep Internetowy</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">      <!-- Dołączenie arkusza bootstrapowego -->
    <link rel="stylesheet" href="css/main.css">         <!-- Podpinamy kod Css -->
</head>

<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

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

            <form class="form-inline ml-auto" method="POST" action="index.php">

                <div class="form-inline mt-1" >
                    <label>
                        <input class="form-control form-inline mr-1" name="wyszukaj" type="search" placeholder="Wyszukaj">
                    </label>      <!-- Wyszukiwarka  -->
                </div>

                <div class="mr-1 mt-1">                                         <!-- Panel Sortowania  -->
                    <label for="sortuj"></label><select class="form-control" name="sortuj" id="sortuj">
                        <option selected value="0">Sortuj według</option>
                        <option value="1">Cena bez dostawy</option>
                        <option value="2">Cena bez dostawy odw.</option>
                        <option value="3">Cena z dostawą</option>
                        <option value="4">Cena z dostawą odw.</option>
                    </select>
                </div>

                <div class="mr-1 mt-1">                                     <!-- Filtr ceny  -->
                    <label for="maks"></label><input class="form-control maks" type="number" placeholder="maksymalna cena" min="1" id="maks" name="maks">
                </div>

                <div class="mr-1 mt-1">                 <!-- Przycisk Wyślij  -->
                    <button class="btn btn-light" type="submit" title="Szukaj"><img src="grafiki/szukaj.png" alt="szukaj" width="20" height="20"></button>
                </div>

            </form>

            <form class="mr-1 mt-1" method="POST" action="koszyk.php">                <!-- Przycisk Koszyka  -->
                <button class="btn btn-light" type="submit"><img src="grafiki/kup.png" alt="szukaj" width="20" height="20" title="Koszyk"></button>
            </form>

            <form class="mr-1 mt-1" method="POST" action="pole_logowania.php">                <!-- Przycisk logowania  -->
                <button class="btn btn-light" type="submit" name="logowanie" id="loggowanie">
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

<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

<main><br>

    <div class="obrazy">
        <div class="container">
            <div class="row">

                <?php
                include "PHP/co_sie_wyswietli_w_mainie.php";

                ?>

            </div>
        </div>
    </div>
</main>

<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>           <!-- Jquery potrzebne do działania bootstrapa  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>        <!-- Implementacja bootstrapa  -->

</body>
</html>