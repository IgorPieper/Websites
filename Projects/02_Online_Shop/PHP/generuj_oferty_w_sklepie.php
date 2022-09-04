<?php

function generuj($result){
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<div class='col-sm-6 col-md-4 col-lg-3'>";
            echo "<figure>";

            echo "<div class='pojemnik'>";

            if(file_exists("grafiki/" . $row["id"] . ".png")==true){
                echo "<img src='grafiki/" . $row["id"] . ".png' class='img-fluid zdjecie' alt='" . $row["nazwa"] . "' id='zdjecie'>";
            } else{
                echo "<img src='grafiki/brak.png' class='img-fluid zdjecie' alt='" . $row["nazwa"] . "' id='zdjecie'>";
            }

            ?>
                <div class='srodek'>
                    <form method='POST' action="dodaj_do_kosza.php?id=<?php echo $row['id'] ?>">
                        <button type='submit' class='wiecej'>Dodaj do koszyka</button>
                    </form>

                    <form method='POST' action='szczegoly.php?action=add&id=<?php echo $row["id"] ?>' >
                        <button type='submit' class='wiecej'>Pokaż więcej szczegółów</button>
                    </form>

                </div>

            </div>
            <?php
            echo "<figcaption><b>" . $row["nazwa"] . "</b></figcaption>";
            echo "<figcaption>Cena bez dostawy: " . $row["cena"] . "zł</figcaption>";
            echo "<figcaption>Cena z dostawą: " . $row["cena"] + 30 . "zł</figcaption>";
            echo "<figcaption>Na stanie: " . $row["ilosc"] . "szt.</figcaption>";
            echo "<em><figcaption>\"" . $row["opis_kr"] . "\"</figcaption></em>";
            echo "</figure>";
            echo "</div>";

        }
    } else{
        echo "<div class='col-sm-4'></div>";
        echo "<div class='col-sm-4' style='text-align:center'><h1>Brak produktu</h1></div>";
    }
}

?>