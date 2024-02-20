<?php

require_once("./vendor/autoload.php");
require_once("lib/database.php");
require_once("lib/artikel.php");
require_once("lib/user.php");
require_once("lib/keuken_type.php");
require_once("lib/ingredient.php");
require_once("lib/gerecht_info.php");
require_once("lib/gerecht.php");
require_once("lib/boodschappenlijst.php");

$loader = new \Twig\Loader\FilesystemLoader("./templates");

$twig = new \Twig\Environment($loader, ["debug" => true]);
$twig->addExtension(new \Twig\Extension\DebugExtension());

try {
    /// INIT
    $db = new database();
    $gerecht = new gerecht($db->getConnection());
    $favoriet = new gerecht($db->getConnection());
    $boodschappenlijst = new boodschappen($db->getConnection());
    $data = $gerecht->selecteerGerecht();
    $gerecht_info= new gerecht_info($db->getConnection());

    /// VERWERK 
    // $gerecht_info->deleteFavorite(2, 3);
    // $gerecht = $gerecht->selecteerGerecht();
    // $fav = $favoriet->isFavoriet(1, 4);
    // $lijst = $boodschappenlijst->boodschappenToevoegen(1, 1);
    // $clear = $boodschappenlijst->clearLijst();

    /// RETURN
    $gerecht_id = isset($_GET["gerecht_id"]) ? $_GET["gerecht_id"] : "";
    $user_id = isset($_GET["user_id"]) ? $_GET["user_id"] : "";
    $action = isset($_GET["action"]) ? $_GET["action"] : "homepage";

    if (isset($_POST['heart_clicked'])) {
    
        $user_id= 1;
        $gerecht_id= $_POST['gerecht_id'];
    
        if ($gerecht->isFavoriet($user_id, $gerecht_id)) {
            $gerecht_info->deleteFavorite($user_id, $gerecht_id);
        }
        else {
            $gerecht_info->addFavorite($user_id, $gerecht_id);
        }
    }

    if (isset($_POST['star_clicked'])) {

        $gerecht_id= $_POST['gerecht_id'];
        $nummeriekveld = $_POST['nummeriekveld'];
        $gerecht_info->addRating($gerecht_id, $nummeriekveld);
    }

    switch ($action) {

        case "homepage": {
                $data = $gerecht->selecteerGerecht();
                $template = 'homepage.html.twig';
                $title = 'homepage';
                break;
            }

        case "detail": {
                $data = $gerecht->selecteerGerecht($gerecht_id);
                $template = 'detail.html.twig';
                $title = "detail pagina";
                break;
            }

        case "lijst": {
                $data = $boodschappenlijst -> ophalenBoodschappen($user_id);
                $template = "boodschappenlijst.html.twig";
                $title = "boodschappenlijst";
                break;
        }

    }

    $template = $twig->load($template);

    echo $template->render(["title" => $title, "data" => $data]);
} catch (Exception $e) {
    echo "Error" . $e->getMessage();
}
