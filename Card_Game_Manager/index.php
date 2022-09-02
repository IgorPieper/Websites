<!doctype html>

<html lang="pl">
<head>
    <meta charset="UTF-8">          <!-- Obsługiwanie Polskich ogonków -->
    <meta name="description" content="Super Karty">         <!-- Opis strony -->
    <meta name="keywords" content="karty">        <!-- Słowa kluczowe -->
    <meta name="author" content="Igor Pieper">  <!-- Informacja o autorze -->

    <title>IKE Karty</title>

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

    <form action="show.php">
        <button>Pokaż Karty</button><hr>
    </form>
    <form method="POST" action="dodaj.php">
        <label for="nazwa">Nazwa: </label><input type="text" id="nazwa" name="nazwa"><br><br><hr>
        <label for="cena">Cena: </label><input type="number" id="cena" name="cena" value="1"><br><br><hr>
        <label for="hp">Życie: </label><input type="number" id="hp" name="hp" value="1"><br><br><hr>
        <label for="atak">Atak: </label><input type="number" id="atak" name="atak" value="1"><br><br><hr>
        <?php
            echo '<a>Tryb: </a>';
            $sql = "SELECT Nazwa FROM tryb";
            $result = $baza->query($sql);
            $n = 1;
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<input type="checkbox" name="tryb[]" value="'.$n.'"> '.$row["Nazwa"].' |';
                    $n += 1;
                }
            }
            echo '<br><br><hr>';

            echo '<a>Rodzaj: </a>';
            $sql = "SELECT Nazwa FROM rodzaj";
            $result = $baza->query($sql);
            $n = 1;
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<input type="checkbox" name="rodzaj[]" value="'.$n.'"> '.$row["Nazwa"].' |';
                    $n += 1;
                }
            }
            echo '<br><br><hr>';

            echo '<label for="temp">Temperatura: </label><select id="temp" name="temp">';
            $sql = "SELECT Nazwa FROM temperatura";
            $result = $baza->query($sql);
            $n = 1;
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<option value='.$n.'>'.$row["Nazwa"].'</option>';
                    $n += 1;
                }
            }
            echo '</select><br><br><hr>';

            echo '<label for="typ">Typ: </label><select id="typ" name="typ">';
            $sql = "SELECT Nazwa FROM typ";
            $result = $baza->query($sql);
            $n = 1;
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<option value='.$n.'>'.$row["Nazwa"].'</option>';
                    $n += 1;
                }
            }
            echo '</select><br><br><hr>';

        ?>
        <label for="sks">Umiejętność: </label><textarea id="sks" name="sks" rows="1" cols="150"></textarea><br><br><hr>
        <label for="opis">Opis: </label><textarea id="opis" name="opis" rows="1" cols="150"></textarea><br><br><hr>
        <?php
            echo '<label for="wystepowanie">Występowanie: </label><select id="wystepowanie" name="wystepowanie">';
                $sql = "SELECT Nazwa FROM wystepowanie";
                $result = $baza->query($sql);
                $n = 1;
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo '<option value='.$n.'>'.$row["Nazwa"].'</option>';
                        $n += 1;
                    }
                }
                echo '</select><br><br><hr>';
        ?>
        <button>Utwórz kartę</button><br><br>
    </form>

</body>
</html>