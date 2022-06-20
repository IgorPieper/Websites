<?php
function zabezpiecz($inpucik)
{
    $inpucik = preg_replace("/\"/", "" , $inpucik);            //usuwamy apostrofy w ramach obrony przed doklejaniem komend sql
    $inpucik = preg_replace("/'/", "" , $inpucik);
    $inpucik = preg_replace("/</", "" , $inpucik);            //usuwamy ostre nawiasy w ramach obrony przed doklejaniem js'a
    $inpucik = preg_replace("/>/", "" , $inpucik);

    return $inpucik;
}

?>