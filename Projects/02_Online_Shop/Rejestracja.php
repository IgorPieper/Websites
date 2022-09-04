<?php

session_start();
include_once "PHP/laczenie_z_baza_danych.php";
include_once "PHP/zabezpieczenie_inputa.php";

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
                <div class="col-sm-4 mr-1 mt-1" style="text-align: center">

                    <div id="pomoc"></div>

                    <form method="POST" action="Rejestracja.php">
                        <br><label>Login:</label><br>
                        <input type="text" name="login" maxlength="16" class="form-control" onclick="odpodpowiedz()"><br><br>
                        <label>Hasło:</label><br>
                        <input type="password" name="haslo" onclick="podpowiedzi()" maxlength="16" class="form-control"><br><br>
                        <label>Powtórz Hasło:</label><br>
                        <input type="password" name="pow_haslo" maxlength="16" class="form-control" onclick="odpodpowiedz()"><br><br>
                        <label>Email:</label><br>
                        <input type="email" name="mail" maxlength="50" class="form-control" onclick="odpodpowiedz()"><br><br>
                        <input type="submit" value="Załóż konto" class="form-control"><br><br>
                    </form>

                    <?php

                    if(isset($_POST["login"]) && isset($_POST["haslo"]) && isset($_POST["pow_haslo"]) && isset($_POST["mail"]))
                        if(!empty($_POST["login"]) && !empty($_POST["haslo"]) && !empty($_POST["pow_haslo"]) && !empty($_POST["mail"])){

                            if($_POST["haslo"]==$_POST["pow_haslo"]){
                                $login = zabezpiecz($_POST["login"]);
                                $haslo = zabezpiecz($_POST['haslo']);
                                $p_haslo = zabezpiecz($_POST["pow_haslo"]);
                                $mail = zabezpiecz($_POST["mail"]);

                                $baza = connection();

                                $sql = "SELECT COUNT('id') FROM users WHERE login='" . $login . "'";
                                $result = $baza->query($sql);
                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {
                                        if ($row["COUNT('id')"] == 0) {
                                            $sql = "SELECT COUNT('id') FROM users WHERE mail='" . $mail . "'";
                                            $result = $baza->query($sql);
                                            if ($result->num_rows > 0) {
                                                while ($row = $result->fetch_assoc()) {
                                                    if ($row["COUNT('id')"] == 0) {
                                                        if(strlen($haslo)>6){
                                                            if(preg_match('/[A-Z]+/', $haslo)==true){
                                                                if(preg_match('/[\d!$%^&]+/', $haslo)){
                                                                    $sql = "INSERT INTO `users`(`id`, `login`, `haslo`, `mail`, `ranga`) VALUES ('','". $login . "','" . $haslo . "','" . $mail . "','0')";
                                                                    $baza->query($sql);
                                                                }else {
                                                                    echo "Hasło musi zawierać minimum jedną cyfrę, bądź znak specjalny";
                                                                }
                                                            } else {
                                                                echo "Hasło musi zawierać minimum jedną dużą literę";
                                                            }
                                                        } else{
                                                            echo "Hasło jest za krótkie";
                                                        }
                                                    } else {
                                                        echo "Mail jest zajęty";
                                                    }
                                                }
                                            }
                                        } else {
                                            echo "Login jest zajęty";
                                        }
                                    }
                                }

                            } else{
                                echo "Hasła nie są identyczne";
                            }

                        } else if(empty($_POST["login"]) && !empty($_POST["haslo"]) && !empty($_POST["pow_haslo"]) && !empty($_POST["mail"])){
                            echo "Proszę wprowadzić login";
                        } else if((empty($_POST["haslo"]) || empty($_POST["pow_haslo"])) && !empty($_POST["login"]) && !empty($_POST["mail"])){
                            echo "Proszę wprowadzić hasło";
                        } else if(empty($_POST["mail"])  && !empty($_POST["haslo"]) && !empty($_POST["pow_haslo"]) && !empty($_POST["login"])){
                            echo "Proszę wprowadzić mail";
                        } else {
                            echo "Proszę uzupełnić dane";
                        }

                    ?>

                </div>
            </div>
        </div>
    </div>
</main>

<script>
    function podpowiedzi(){
        document.getElementById("pomoc").innerHTML="<br><h4>Hasło:</h4><br>* Musi zawierać wielką literę<br>* Musi zawierać cyfrę lub znak<br>* Musi mieć co najmniej 6 znaków<br>";
    }
    function odpodpowiedz(){
        document.getElementById("pomoc").innerHTML="";
    }
</script>

</body>
</html>
