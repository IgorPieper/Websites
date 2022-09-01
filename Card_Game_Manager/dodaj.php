<?php

$nazwa = $_POST["nazwa"];
$cena = $_POST["cena"];
$hp = $_POST["hp"];
$atak = $_POST["atak"];
$temp = $_POST["temp"];
$typ = $_POST["typ"];
if (empty($_POST["sks"])){
    $skill_spec = "Brak";
} else{
    $skill_spec = $_POST["sks"];
}
$opis = $_POST["opis"];
$wyst = $_POST["wystepowanie"];

$rodzaj = $_POST["rodzaj"];
$tryb = $_POST["tryb"];
$sp = $_POST["sp"];

$baza = new mysqli("localhost", "root", "", "karty_ike");
if($baza->connect_error) {
    die("Connection failed");
}

$sql = "INSERT INTO `karty`
    (`Nazwa`, `Cena`, `HP`, `Atak`, `Temperatura`, `Typ`, `Skill_Spec`, `Opis`, `Wystepowanie`)
     VALUES (".$nazwa.",".$cena.",".$hp.",".$atak.",".$temp.",".$typ.",".$skill_spec.",".$opis.",".$wyst.")";
$result = $baza->query($sql);

$sql = "SELECT id from `karty` WHERE Nazwa=".$nazwa;
if ($result->num_rows > 0){
    while($row = $result->fetch_assoc()) {
        foreach ($tryb as $t) {
            $sql = "INSERT INTO `karty_tryb`(`karty_id`, `tryb_id`) VALUES (" . $row['id'] . "," . $t . ")";
    }
    }
}

print_r($tryb);

?>
