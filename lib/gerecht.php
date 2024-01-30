<?php

class gerecht
{

    private $connection;
    private $user;
    private $keuken_type;
    private $ingredient;
    private $gerecht_info;
    private $artikel;

    public function __construct($connection)
    {
        $this->connection = $connection;
        $this->artikel = new artikel($connection);
        $this->user = new user($connection);
        $this->keuken_type = new keuken_type($connection);
        $this->ingredient = new ingredient($connection);
        $this->gerecht_info = new gerecht_info($connection);
    }

    private function selecteerArtikel($artikel_id)
    {
        $artikel = $this->artikel->selecteerArtikel($artikel_id);
        return $artikel;
    }

    private function selecteerUser($user_id)
    {
        $user = $this->user->selecteerUser($user_id);
        return $user;
    }

    private function selecteerKeukenType($keuken_type)
    {
        $keuken_type = $this->keuken_type->selecteerKeukenType($keuken_type);
        return $keuken_type;
    }

    private function selecteerIngredient($ingredient)
    {
        $ingredient = $this->ingredient->selecteerIngredient($ingredient);
        return $ingredient;
    }

    private function selecteerInfo($gerecht_info)
    {
        $gerecht_info = $this->gerecht_info->selecteerInfo($gerecht_info);
        return $gerecht_info;
    }

    public function selecteerGerecht($ID = NULL)
    {
        $sql = "SELECT * FROM gerecht ";

        if ($ID !== NULL) {
            $sql .= "WHERE ID = $ID";
        }
        $recept = [];

        $result = mysqli_query($this->connection, $sql);
        while ($gerecht = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            $keuken_id = $gerecht["keuken_id"];
            $keuken = $this->selecteerKeukenType($keuken_id);
            $type_id = $gerecht["type_id"];
            $type = $this->selecteerKeukenType($type_id);
            $user_id = $gerecht["user_id"];
            $user = $this->selecteerUser($user_id);

            $recept[] = [
                "ID" => $gerecht["ID"],
                "keuken_id" => $gerecht["keuken_id"],
                "type_id" => $gerecht["type_id"],
                "user_id" => $gerecht["user_id"],
                "datum toegevoegd" => $gerecht["datum_toegevoegd"],
                "titel" => $gerecht["titel"],
                "korte omschrijving" => $gerecht["korte_omschrijving"],
                "lange omschrijving" => $gerecht["lange_omschrijving"],
                "afbeelding" => $gerecht["afbeelding"],
                "keuken" => $keuken["omschrijving"],
                "type" => $type["omschrijving"],
                "user" => $user["user_name"]
            ];
        }
        return ($recept);
    }
}
