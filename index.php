<?php

require_once("lib/database.php");
require_once("lib/artikel.php");
require_once("lib/user.php");
require_once("lib/keuken_type.php");
require_once("lib/ingredient.php");
require_once("lib/gerecht_info.php");
require_once("lib/gerecht.php");

try {
    /// INIT
    $db = new database();
    $art = new artikel($db->getConnection());
    $user = new user($db->getConnection());
    $keuken_type = new keuken_type($db->getConnection());
    $ing = new ingredient($db->getConnection());
    $gerecht_info = new gerecht_info($db->getConnection());
    $gerecht = new gerecht($db->getConnection());
    $favoriet = new gerecht($db->getConnection());

    /// VERWERK 
    $artikel = $art->selecteerArtikel(3);
    $gebruiker = $user->selecteerUser(1);
    $keukentype = $keuken_type->selecteerKeukenType(2);
    $ingredient = $ing->selecteerIngredient(3);
    $info = $gerecht_info->selecteerInfo(1, "B");
    // $gerecht_info->deleteFavorite(2, 3);
    $gerecht = $gerecht->selecteerGerecht();
    $fav = $favoriet->isFavoriet(1, 4);

    /// RETURN
    echo "<pre>";
    var_dump($fav);
    print_r($gerecht);
} catch (Exception $e) {
    echo "Error" . $e->getMessage();
}
