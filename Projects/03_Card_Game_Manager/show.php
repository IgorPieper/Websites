<?php

session_start();

if (!isset($_SESSION["id_start"])){
    $_SESSION["id_start"] = 0;
}

if (!isset($_SESSION["loc"])){
    $_SESSION["loc"] = "show.php";
}
$_SESSION["loc"] = "show.php";

?>

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

    <div style="float: left; padding-right: 20px">
        <form action="details.php">
            <button>Szczegóły</button><br><br>
        </form>
    </div>

    <div>
        <form action="show_heroes.php">
            <button>Bohaterowie</button><br><br>
        </form>
    </div>

    <table>
        <tr>
            <th>Nr.</th>
            <th>Nazwa</th>
            <th id="small_one">💲</th>
            <th id="small_one">♥️</th>
            <th id="small_one">💪</th>
            <th>Typ</th>
            <th>Umiejętności</th>
        </tr>

        <?php
            $id_start = $_SESSION["id_start"];
            $id_end = $id_start + 25;


            $baza = new mysqli("localhost", "root", "", "karty_ike");
            if($baza->connect_error) {
                die("Connection failed");
            }

            $sql = "SELECT karty.id as ids, karty.Nazwa as Naz, typ.Nazwa as Nazwa_Typu, Cena, HP, Atak, Skill_Spec, typ.Nazwa FROM karty, typ WHERE karty.Typ=typ.id AND karty.id > " . $id_start . " AND karty.id <= " . $id_end;
            $result = $baza->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row["ids"] . "</td>";
                    echo "<td>" . $row["Naz"] . "</td>";
                    if ($row["Cena"] == -1){
                        echo "<td>?</td>";
                    } else {
                        echo "<td>" . $row["Cena"] . "</td>";
                    }
                    echo "<td>" . $row["HP"] . "</td>";
                    echo "<td>" . $row["Atak"] . "</td>";
                    echo "<td>" . $row["Nazwa_Typu"] . "</td>";
                    echo "<td>" . $row["Skill_Spec"] . "</td>";
                    echo "</tr>";
                }
            }
        ?>
    </table><br>


    <?php
        if ($id_start > 0) {
            echo '<div style="float: left; padding-right: 20px">';
                echo '<form method="post" action="previous_one.php">';
                    echo '<button>Poprzednie</button>';
                echo '</form>';
            echo '</div>';
        }

    $amount = "SELECT COUNT(id) as total FROM karty";
    $result = $baza->query($amount);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            if ($id_end < $row["total"]){
                echo '<div style="float: left">';
                    echo '<form method="post" action="next_one.php">';
                        echo '<button>Następne</button>';
                    echo '</form>';
                echo '</div>';
            }
        }
    }
    ?>


</body>

</html>