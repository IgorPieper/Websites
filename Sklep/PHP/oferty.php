<?php
    function fullOffer($maks)       //funkcja odpowiadająca za prawidłowe wyświetlanie ofert w sklepie
    {
        $baza = connection();       //łączenie z bazą danych

        if($maks!=0){
            $sql = "SELECT id, nazwa, cena, opis_kr, ilosc FROM kamien WHERE cena<='" . $maks . "'";        //zapytania SQL z uwzględnieniem filtru ceny
        } else{
            $sql = "SELECT id, nazwa, cena, opis_kr, ilosc FROM kamien";            //zapytania SQL bez uwzględnienienia filtru ceny
        }

        $result = $baza->query($sql);

        generuj($result);
    }

    function wyszukaj($wyszukaj){       //funkcja odpowiadająca za działanie wyszukiwarki

        $baza = connection();

        $wyszukaj = zabezpiecz($wyszukaj);

        $sql = "SELECT id, nazwa, cena, opis_kr, ilosc FROM kamien WHERE nazwa='" . $wyszukaj . "'";
        $result = $baza->query($sql);

        generuj($result);

    }

    function sortuj($sortuj, $maks){        //funkcja odpowiadająca za działanie sortowania
        $baza = connection();

        if($sortuj==1 || $sortuj==3){
            if($maks!=0) {
                $sql = "SELECT id, nazwa, cena, opis_kr, ilosc FROM kamien WHERE cena<='" . $maks . "' ORDER BY cena";
            } else{
                $sql = "SELECT id, nazwa, cena, opis_kr, ilosc FROM kamien ORDER BY cena";
            }
        } else{
            if($maks!=0) {
                $sql = "SELECT id, nazwa, cena, opis_kr, ilosc FROM kamien WHERE cena<='" . $maks . "' ORDER BY cena DESC";
            } else{
                $sql = "SELECT id, nazwa, cena, opis_kr, ilosc FROM kamien ORDER BY cena DESC";
            }
        }


        $result = $baza->query($sql);

        generuj($result);
    }