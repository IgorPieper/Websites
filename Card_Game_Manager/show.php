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

    <form action="index.php">
        <button>Dodaj karte</button><br><br>
    </form>

    <a>Nazwa</a><br><hr>

    <?php
        $baza = new mysqli("localhost", "root", "", "karty_ike");
        if($baza->connect_error) {
            die("Connection failed");
        }

        $sql = "SELECT Nazwa FROM karty";
        $result = $baza->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo $row["Nazwa"] . "<br><hr>";
            }
        }
    ?>
</body>

</html>