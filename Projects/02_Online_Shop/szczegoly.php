<?php

session_start();

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
                <div class="col-sm-4 mr-1 mt-1">
                <?php

                require_once "PHP/laczenie_z_baza_danych.php";

                $id = $_GET["id"];

                if(file_exists("grafiki/" . $id . ".png")==true){
                    echo "<img src='grafiki/" .  $id  . ".png' class='img-fluid' width='200' height='200' alt='zdjecie'></div>";
                } else{
                    echo "<img src='grafiki/brak.png' class='img-fluid' width='200' height='200' alt='zdjecie'></div>";
                }

                $baza = connection();
                $sql = "SELECT id, nazwa, cena, opis_kr, opis_dl, ilosc FROM kamien WHERE id=" . $id;

                $result = $baza->query($sql);
                if ($result->num_rows > 0) {
                    while ($roww = $result->fetch_assoc()) {
                        echo "<div class='col-sm-6 mr-1 mt-1'>";
                        echo "<h1 style='text-align: center'>". $roww["nazwa"] . "</h1><br>";

                        $sql = "SELECT AVG(ocena) FROM `opinie` WHERE kamien_id=" . $roww['id'];
                        $result = $baza->query($sql);
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {

                                if(round($row["AVG(ocena)"], 1)<3){
                                    echo "<img src='grafiki/unlucky.png' style='width:26px; float: left' alt=''>";
                                } else{
                                    echo "<img src='grafiki/logged.png' style='width:26px; float: left' alt=''>";
                                }

                                echo "<h3 style='float: left; margin-left:5px'>";
                                if(round($row["AVG(ocena)"], 1)==0){
                                  echo "Brak Ocen";
                                } else {
                                    echo round($row["AVG(ocena)"], 1);
                                }
                            }
                        }
                        echo "</h3>";

                        $sql = "SELECT COUNT(id) FROM `opinie` WHERE kamien_id=" . $roww['id'];
                        $result = $baza->query($sql);
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                if($row["COUNT(id)"]==0){
                                    echo "<h3 style='float: right'>Brak Recenzji</h3><br><br>";
                                } else if($row["COUNT(id)"]<5){
                                    echo "<h3 style='float: right'>" . $row["COUNT(id)"];
                                    echo " Recenzje</h3><br><br>";
                                }else {
                                    echo "<h3 style='float: right'>" . $row["COUNT(id)"];
                                    echo " Recenzji</h3><br><br>";
                                }
                            }
                        }

                        echo $roww["opis_dl"] . "<br><br>";
                        echo '<div style="text-align: center"><u><h5>Tylko: ' . $roww["cena"] . ' zł ( '. $roww["cena"]+30 .' z wysyłką ) </h5></u></div><br>';


                        echo '<form action="dodaj_do_kosza.php?id=' . $roww['id'] . '" method="POST">';
                            echo '<input type="number" min="1" max="' . $roww['ilosc'] . '" value="1" name="ile">';
                            echo '<input type="submit" value="Dodaj do koszyka" style="float: right"><br><br>';
                        echo '</form>';

                        echo "<div>Dostępne formy dostawy: Paczkomat, kurier, gołąb</div>";
                        echo "</div><br><br>";

                        echo "<div class='col-sm-12 mr-1 mt-1'>";
                            echo "<hr style='border: 1px solid white'>";
                            echo "<div style='text-align: center; font-size: 25px'><b>Opinie</b>";

                            if(isset($_SESSION["login"]) && !empty($_SESSION["login"])){
                                echo "<form method='POST' action='dodaj_opinie.php?id=" . $id . "' style='float: right;'>";
                                echo "<input type='submit' value='Dodaj Opinie' style='color: #27291d'>" ;
                                echo "</form></div>" ;
                            } else{
                                echo "</div>";
                            }

                            echo "<hr style='border: 1px solid white'>";

                            $sql = "SELECT * FROM `opinie` JOIN `users` ON users_id=users.id WHERE kamien_id=" . $roww['id'];
                            $result = $baza->query($sql);
                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    echo "<b>";

                                    if(isset($_SESSION["login"])){
                                        if($row["login"]==$_SESSION["login"] || $_SESSION["ranga"]==1){
                                            $log = $_SESSION["login"];
                                            $ops = $row["tresc"];
                                            echo "<form method='POST' action='usun_opinie.php?log=". $log . "&ops=" . $ops . "'>";
                                                echo "<label>" . $row["login"] . "</label>";
                                                echo "<button type='submit' style='margin-left: 10px'><img src='grafiki/trash.png' style='width: 15px; height: 15px;'></button>";
                                            echo "</form>";
                                        } else{
                                            echo $row["login"];
                                        }
                                    } else{
                                        echo $row["login"];
                                    }

                                    echo "<div style='float: right'>ocenił(a) na " . $row["ocena"] . "</div></b><br>";
                                    echo "<div style='margin-left: 70px'><i>" . $row["tresc"] . "</i></div>";
                                    echo "<hr style='border: 1px dashed white'>";
                                }
                            }

                        echo "</fieldset></div>";
                    }
                }
                ?>
            </div>
        </div>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>

