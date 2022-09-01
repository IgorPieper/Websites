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

$tryb = $_POST["tryb"];
$rodzaj = $_POST["rodzaj"];
$sp = $_POST["sp"];

$baza = new mysqli("localhost", "root", "", "karty_ike");
if($baza->connect_error) {
    die("Connection failed");
}

$sql = "INSERT INTO `karty` (`Nazwa`, `Cena`, `HP`, `Atak`, `Temperatura`, `Typ`, `Skill_Spec`, `Opis`, `Wystepowanie`) VALUES ('".$nazwa."', '".$cena."', '".$hp."', '".$atak."', '".$temp."', '".$typ."', '".$skill_spec."', '".$opis."', '".$wyst."')";
$result = $baza->query($sql);

$sql = "SELECT id from `karty` WHERE Nazwa='".$nazwa."'";
$result2 = $baza->query($sql);
if ($result2->num_rows > 0){
    while($row = $result2->fetch_assoc()) {
        foreach ($tryb as $t) {
            $sql = "INSERT INTO `karty_tryb`(`karty_id`, `tryb_id`) VALUES ('" . $row['id'] . "', '" . $t . "')";
            $result3 = $baza->query($sql);
        }

        foreach ($rodzaj as $t) {
            $sql = "INSERT INTO `karty_rodzaj`(`karty_id`, `rodzaj_id`) VALUES ('" . $row['id'] . "', '" . $t . "')";
            $result3 = $baza->query($sql);
        }

        foreach ($sp as $t) {
            $sql = "INSERT INTO `karty_skillpods`(`karty_id`, `skill_pods_id`) VALUES ('" . $row['id'] . "', '" . $t . "')";
            $result3 = $baza->query($sql);
        }
    }

}

header('Location: index.php');

?>