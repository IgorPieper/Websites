<!doctype html>

<html lang="pl">
<head>
    <meta charset="UTF-8">          <!-- Obsługiwanie Polskich ogonków -->
    <meta name="description" content="Super Karty">         <!-- Opis strony -->
    <meta name="keywords" content="karty">        <!-- Słowa kluczowe -->
    <meta name="author" content="Igor Pieper">  <!-- Informacja o autorze -->

    <title>Stwórz Bohatera</title>

    <link rel="stylesheet" href="main.css">
</head>

<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

<body>
<?php
$baza = new mysqli("localhost", "root", "", "karty_ike");
if($baza->connect_error) {
    die("Connection failed");
}
?>

<div style="float: left; padding-right: 20px">
    <form action="show.php">
        <button>Pokaż Karty</button>
    </form>
</div>

<div>
    <form action="index.php">
        <button>Dodaj Kartę</button>
    </form>
</div><hr>

<form method="POST" action="faktycznie_dodaj_boh.php">
    <label for="nazwa">Nazwa: </label><input type="text" id="nazwa" name="nazwa"><br><br><hr>
    <label for="hp">Życie: </label><input type="number" id="hp" name="hp" value="1"><br><br><hr>
    <label for="opis">Opis: </label><textarea id="opis" name="opis" rows="1" cols="150"></textarea><br><br><hr>
    <label for="wys">Występowanie: </label><input type="text" id="wys" name="wys"><br><br><hr>
    <button>Utwórz Bohatera</button><br><br>
</form>

</body>
</html>