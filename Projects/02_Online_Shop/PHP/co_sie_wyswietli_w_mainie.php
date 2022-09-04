<?php

require 'PHP/laczenie_z_baza_danych.php';           //Implementacja pliku łączącego stronę z bazą danych
include 'PHP/zabezpieczenie_inputa.php';       //Implementacja kodu broniącego inputa od niepotrzebnych wstrzykiwań

$_SESSION["zalogowany"]=0;

if(isset($_POST["logowanie"])){

    include "pole_logowania.php";

} else{

    include 'PHP/oferty.php';               //Implementacja pliku z funkcjami odpowiadającymi za działanie wyszukiwarki, sortowania i filtru
    include 'PHP/generuj_oferty_w_sklepie.php';              //Implementacja pliku z funkcją generującą oferty w sklepie

    $maks=0;
    if(isset($_POST["maks"]) && $_POST["maks"]>0){
        $maks=$_POST["maks"];
    }

    if(isset($_POST["wyszukaj"]) && $_POST["wyszukaj"]!=""){
        wyszukaj($_POST["wyszukaj"]);
    } else if (isset($_POST["sortuj"]) && $_POST["sortuj"]!=0){
        sortuj($_POST["sortuj"], $maks);
    } else{
        fullOffer($maks);
    }
}


?>