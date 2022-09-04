<?php

    session_start();

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
                <button class="btn btn-light" type="submit"  id="loggowanie">
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
                        if(isset($_SESSION["logowanie"])){
                            if ($_SESSION["ranga"]==1) {
                                echo '<br><form action="panel_admina.php" method="post">';
                                    echo '<input type="submit" value="Panel Administratora" class="form-control">';
                                echo '</form>';
                            }

                            echo '<br><form action="wylogowywanie.php">
                                         <input type="submit" class="form-control" value="Wyloguj się">
                                   </form><br>';
                            echo '<form action="index.php">
                                         <input type="submit" class="form-control" value="Strona Główna">
                                   </form><br>';
                        } else{
                            echo '<form action="logowanie.php" method="POST">
                                        <label>Login</label>
                                        <input type="text" class="form-control" name="login"><br>
                                        <label>Password:</label>
                                        <input type="password" class="form-control" name="haslo"><br>
                        
                                        <input type="submit" class="form-control" value="Zaloguj się">
                                    </form><br>';
                            echo '<form method="post" action="Rejestracja.php">
                                        <input type="submit" class="form-control" value="Rejestracja">
                                  </form>';
                        }
                    ?>

                </div>
            </div>
        </div>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
