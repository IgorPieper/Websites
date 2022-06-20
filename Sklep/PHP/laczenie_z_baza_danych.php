<?php

function connection(){
    $plik = fopen("./bazy_danych/dane.json", "r+") or die("Sklep tymczasowo nieczynny");
    $lol = fgets($plik);
    $dane = json_decode($lol, true);


    $baza=new mysqli($dane["host"], $dane["user"], $dane["password"], $dane["database"]);
    if($baza->connect_error){
        die("Błąd Połączenia: " . $baza->connect_error);
    }
    return $baza;
}

?>