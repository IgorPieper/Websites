<?php

session_start();

if(!isset($_SESSION["ranga"]) || $_SESSION["ranga"]!=1){
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
            <form class="mr-1 mt-1 ml-auto" action="koszyk.php">                <!-- Przycisk Koszyka  -->
                <button class="btn btn-light" type="submit"><img src="grafiki/kup.png" alt="szukaj" width="20" height="20" title="Koszyk"></button>
            </form>
            <form class="mr-1 mt-1">                <!-- Przycisk logowania  -->
                <button class="btn btn-light" type="submit" id="loggowanie">
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
                    <h1>Dodaj Produkt</h1><hr style="border: 1px solid white">

                    <?php
                    if(isset($_SESSION["blad"]) && !empty($_SESSION["blad"])){
                        if($_SESSION["blad"]=="Produkt został pomyślnie Dodany"){
                           echo '<div style="color: green">' . $_SESSION["blad"] . '</div>';
                       } else{
                            echo '<div style="color: red">' . $_SESSION["blad"] . '</div>';
                        }

                        unset($_SESSION['blad']);
                    }
                    ?>

                    <form action="stworz_produkt.php" method="post">
                        <label>Nazwa Produktu</label><br>
                        <input type="text" class="form-control" name="nazwa_pro"><br><br>
                        <label>Cena Produktu</label><br>
                        <input type="number" min="1" max="9999999999" class="form-control" name="cena_pro"><br><br>
                        <label>Krótki Opis</label><br>
                        <textarea maxlength="190" class="form-control" name="kro_opis_pro"></textarea><br><br>
                        <label>Długi Opis</label><br>
                        <textarea maxlength="2000" class="form-control" name="dl_opis_pro"></textarea><br><br>
                        <label>Ilość na Stanie</label><br>
                        <input type="number" min="1" max="999" class="form-control" name="ilosc_pro"><br><br>
                        <input type="submit" value="Dodaj Produkt" class="form-control"><br><br>
                    </form>

                    <form action="index.php">
                        <input type="submit" value="Strona Główna" class="form-control"><br><br>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
