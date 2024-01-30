<?php

class ingredient
{

    private $connection;
    private $art;

    public function __construct($connection)
    {
        $this->connection = $connection;
        $this->art = new artikel($connection);
    }

    private function selecteerArtikel($artikel_id)
    {
        $artikel = $this->art->selecteerArtikel($artikel_id);
        return $artikel;
    }

    public function selecteerIngredient($gerecht_id)
    {

        $sql = "SELECT * FROM ingredient WHERE gerecht_id = $gerecht_id";
        $ing = [];

        $result = mysqli_query($this->connection, $sql);
        while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            $artikel_id = $row["artikel_id"];

            $artikel = $this->selecteerArtikel($artikel_id);

            $ing[] = [
                "ID" => $row["ID"],
                "gerecht_id" => $row["gerecht_id"],
                "artikel_id" => $row["artikel_id"],
                "aantal" => $row["aantal"],
                "naam" => $artikel["naam"],
                "omschrijving" => $artikel["omschrijving"],
                "prijs" => $artikel["prijs"],
                "verpakking" => $artikel["verpakking"],
                "eenheid" => $artikel["eenheid"]
            ];
        }
        return ($ing);
    }
}
