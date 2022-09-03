<!doctype html>

<html lang="pl">
<head>
    <meta charset="UTF-8">          <!-- Obsługiwanie Polskich ogonków -->
    <meta name="description" content="Super Karty">         <!-- Opis strony -->
    <meta name="keywords" content="karty">        <!-- Słowa kluczowe -->
    <meta name="author" content="Igor Pieper">  <!-- Informacja o autorze -->

    <title>Lista Kart</title>

    <link rel="stylesheet" href="main.css">

    <style>
        tr, td{
            border-bottom: 1px solid #ffbd59;
            border-collapse: collapse;
            padding-left: 5px;
            padding-right: 5px;
            background-color: #1e1e1e;
        }
        #small_one{
            width: 35px;
        }
    </style>
</head>

<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->

<body>

<div style="float: left; padding-right: 20px">
    <form action="index.php">
        <button>Dodaj karte</button><br><br>
    </form>
</div>

<div>
    <form action="show.php">
        <button>Karty</button><br><br>
    </form>
</div>

<table>
    <tr>
        <th>Nr.</th>
        <th>Nazwa</th>
        <th>Życie</th>
        <th>Opis</th>
        <th>Występowanie</th>
    </tr>

    <?php

    $baza = new mysqli("localhost", "root", "", "karty_ike");
    if($baza->connect_error) {
        die("Connection failed");
    }

    $sql = "SELECT id, Nazwa, HP, Opis, Wystepowanie FROM bohater";
    $result = $baza->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row["id"] . "</td>";
            echo "<td>" . $row["Nazwa"] . "</td>";
            echo "<td>" . $row["HP"] . "</td>";
            echo "<td>" . $row["Opis"] . "</td>";
            echo "<td>" . $row["Wystepowanie"] . "</td>";
            echo "</tr>";
        }
    }
    ?>
</table><br>

</body>

</html>