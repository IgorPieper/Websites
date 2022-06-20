<?php

session_start();

require_once "PHP/zabezpieczenie_inputa.php";
require_once "PHP/laczenie_z_baza_danych.php";

if (isset($_POST["nazwa_pro"]) && !empty($_POST["nazwa_pro"])){
    if (isset($_POST["cena_pro"]) && !empty($_POST["cena_pro"])){
        if (isset($_POST["kro_opis_pro"]) && !empty($_POST["kro_opis_pro"])){
            if (isset($_POST["dl_opis_pro"]) && !empty($_POST["dl_opis_pro"])){
                if (isset($_POST["ilosc_pro"]) && !empty($_POST["ilosc_pro"])){
                    $nazwa = zabezpiecz($_POST["nazwa_pro"]);
                    $cena = zabezpiecz($_POST["cena_pro"]);
                    $opis_kr = zabezpiecz($_POST["kro_opis_pro"]);
                    $opis_dl = zabezpiecz($_POST["dl_opis_pro"]);
                    $ilosc = zabezpiecz($_POST["ilosc_pro"]);

                    $baza = connection();
                    $sql = "INSERT INTO `kamien`(`id`, `nazwa`, `cena`, `opis_kr`, `opis_dl`, `ilosc`) VALUES ('','" . $nazwa . "','" . $cena . "','" . $opis_kr . "','" . $opis_dl . "','" . $ilosc . "')";
                    $result = $baza->query($sql);
                    $wynik = $result->num_rows;

                    $_SESSION["blad"] = "Produkt został pomyślnie Dodany";
                    header('Location: panel_admina.php');
                } else{
                    $_SESSION["blad"] = "Proszę uzupełnić pole: Ilość Produktów na Stanie";
                    header('Location: panel_admina.php');
                }
            } else{
                $_SESSION["blad"] = "Proszę uzupełnić pole: Długi Opis Produktu";
                header('Location: panel_admina.php');
            }
        } else{
            $_SESSION["blad"] = "Proszę uzupełnić pole: Krótki Opis Produktu";
            header('Location: panel_admina.php');
        }
    } else{
        $_SESSION["blad"] = "Proszę uzupełnić pole: Cena Produktu";
        header('Location: panel_admina.php');
    }
} else{
    $_SESSION["blad"] = "Proszę uzupełnić pole: Nazwa Produktu";
    header('Location: panel_admina.php');
}

?>