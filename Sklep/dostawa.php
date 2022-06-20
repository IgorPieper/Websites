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

<main>
    <div class="obrazy">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 mr-1 mt-1"></div>
                <div class="col-sm-4 mr-1 mt-1 logowanie">
                    <?php
                        if(isset($_SESSION["blad"]) && !empty($_SESSION["blad"])){
                            echo '<div style="color: red">' . $_SESSION["blad"] . '</div>';
                            unset($_SESSION['blad']);
                        }
                    ?>

                    <form method="post" action="weryfikacja.php">
                        <?php
                        if(!isset($_SESSION["mail"])){
                            echo '<label>E-mail:</label><br>';
                            echo '<input type="email" name="mailik"  class="form-control"><br><br>';
                        }
                        ?>
                        <label>Numer Telefonu:</label><br>
                        <input type="number" name="telefonik" min="0" placeholder="np. 000000000" class="form-control"><br><br>
                        <label>Imię:</label><br>
                        <input type="text" name="imie" placeholder="np. Jacek" class="form-control"><br><br>
                        <label>Nazwisko:</label><br>
                        <input type="text" name="nazwisko" placeholder="np. Placek" class="form-control"><br><br>
                        <label>Kraj:</label><br>
                        <input type="text" name="kraj" value="Poland" class="form-control"><br><br>
                        <label>Miasto:</label><br>
                        <input type="text" name="miasto" placeholder="np. Kraków" class="form-control"><br><br>
                        <label>Kod Pocztowy:</label><br>
                        <input type="text" name="kodpocz" placeholder="np. 00-000" class="form-control"><br><br>
                        <label>Ulica:</label><br>
                        <input type="text" name="ulica" placeholder="np. Brzozowa" class="form-control"><br><br>
                        <label>Numer Domu:</label><br>
                        <input type="text" name="domek" placeholder="np. 00/00" class="form-control"><br><br>
                        <label>Sposób dostawy:</label><br>
                        <input type="radio" value="1" name="dostawa" checked><label style="margin-left: 5px"> Paczkomat (+30zł)</label><br>
                        <input type="radio" value="2" name="dostawa"><label style="margin-left: 5px"> Kurier (+40zł)</label><br>
                        <input type="radio" value="3" name="dostawa"><label style="margin-left: 5px"> Gołąb Pocztowy (+100zł)</label><br><br>
                        <input type="submit" value="Przejdź do podsumowania" class="form-control"><br><br>
                    </form>

                </div>
            </div>
        </div>
    </div>
</main>

</body>
</html>