<?php

session_start();

require_once 'PHP/zabezpieczenie_inputa.php';



if((isset($_POST["mailik"]) && !empty($_POST["mailik"])) || (isset($_SESSION["mail"]) && !empty($_SESSION["mail"]))) {
    if (isset($_POST["telefonik"]) && !empty($_POST["telefonik"])) {
        if (isset($_POST["imie"]) && !empty($_POST["imie"])) {
            if (isset($_POST["nazwisko"]) && !empty($_POST["nazwisko"])) {
                if (isset($_POST["kraj"]) && !empty($_POST["kraj"])) {
                    if (isset($_POST["miasto"]) && !empty($_POST["miasto"])) {
                        if (isset($_POST["kodpocz"]) && !empty($_POST["kodpocz"])) {
                            if (isset($_POST["ulica"]) && !empty($_POST["ulica"])) {
                                if (isset($_POST["domek"]) && !empty($_POST["domek"])) {

                                    if (isset($_POST["mailik"])){
                                        $mail = zabezpiecz($_POST["mailik"]);
                                        $_SESSION["mail"]=$mail;
                                    } else{
                                        $mail = zabezpiecz($_SESSION["mail"]);
                                    }
                                    $telefonik = zabezpiecz($_POST["telefonik"]);
                                    $imie = zabezpiecz($_POST["imie"]);
                                    $nazwisko = zabezpiecz($_POST["nazwisko"]);
                                    $kraj = zabezpiecz($_POST["kraj"]);
                                    $miasto = zabezpiecz($_POST["miasto"]);
                                    $kodpocz = zabezpiecz($_POST["kodpocz"]);
                                    $ulica = zabezpiecz($_POST["ulica"]);
                                    $domek = zabezpiecz($_POST["domek"]);

                                    if($_POST["dostawa"]=="1"){
                                        $cena = $_SESSION["suma"]+30;
                                        $dostawca = "Paczkomat";
                                    } else if($_POST["dostawa"]=="2"){
                                        $cena = $_SESSION["suma"]+40;
                                        $dostawca = "Kurier";
                                    } else{
                                        $cena = $_SESSION["suma"]+100;
                                        $dostawca = "Gołąb";
                                    }

                                    $dane = array($telefonik, $imie, $nazwisko, $kraj, $miasto, $kodpocz, $ulica, $domek, $dostawca, $cena);
                                    $_SESSION["dane"] = $dane;

                                    header('Location: podsumowanie.php');
                                } else {
                                    $_SESSION["blad"] = "Proszę uzupełnić pole: Numer Domu";
                                    header('Location: dostawa.php');
                                }
                            } else {
                                $_SESSION["blad"] = "Proszę uzupełnić pole: Ulica";
                                header('Location: dostawa.php');
                            }
                        } else {
                            $_SESSION["blad"] = "Proszę uzupełnić pole: Kod Pocztowy";
                            header('Location: dostawa.php');
                        }
                    } else {
                        $_SESSION["blad"] = "Proszę uzupełnić pole: Miasto";
                        header('Location: dostawa.php');
                    }
                } else {
                    $_SESSION["blad"] = "Proszę uzupełnić pole: Kraj";
                    header('Location: dostawa.php');
                }
            } else {
                $_SESSION["blad"] = "Proszę uzupełnić pole: Nazwisko";
                header('Location: dostawa.php');
            }
        } else {
            $_SESSION["blad"] = "Proszę uzupełnić pole: Imie";
            header('Location: dostawa.php');
        }
    } else {
        $_SESSION["blad"] = "Proszę uzupełnić pole: Numer Telefonu";
        header('Location: dostawa.php');
    }
} else {
    $_SESSION["blad"] = "Proszę uzupełnić pole: Mail";
    header('Location: dostawa.php');
}


?>