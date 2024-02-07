<?php

class gerecht_info
{

    private $connection;
    private $user;

    public function __construct($connection)
    {
        $this->connection = $connection;
        $this->user = new user($connection);
    }

    private function selecteerUser($user_id)
    {
        $user = $this->user->selecteerUser($user_id);
        return $user;
    }

    public function selecteerInfo($gerecht_id, $record_type)
    {

        $sql = "SELECT * FROM gerecht_info WHERE gerecht_id= $gerecht_id AND record_type= '$record_type' ";
        $info = [];

        $result = mysqli_query($this->connection, $sql);
        while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            $gerechtInfo = [
                "ID" => $row["ID"],
                "record_type" => $row["record_type"],
                "gerecht_id" => $row["gerecht_id"],
                "datum" => $row["datum"],
                "nummeriekveld" => $row["nummeriekveld"],
                "tekstveld" => $row["tekstveld"]
            ];
            if ($row["record_type"] == "F" || $row["record_type"] == "O") {
                $user_id = $row["user_id"];
                $user = $this->selecteerUser($user_id);
                $userInfo = [
                    "user_id" => $row["user_id"],
                    "user_name" => $user["user_name"]
                ];
                $info[] = array_merge($gerechtInfo, $userInfo);
            } else {
                $info[] = $gerechtInfo;
            }
        }
        return ($info);
    }

    public function addFavorite($user_id, $gerecht_id)
    {
        $record_type = 'F';

        $sql = "INSERT INTO gerecht_info (user_id, gerecht_id, record_type)
        VALUES ($user_id, $gerecht_id, '$record_type')";

        $result = mysqli_query($this->connection, $sql);

        if ($result) {
            $user = $this->selecteerUser($user_id);
            echo "Succesfully added to your favorites, " . $user["user_name"] . "!";
        }
    }
    
    public function deleteFavorite($user_id, $gerecht_id)
    {
        $sql = "DELETE FROM gerecht_info WHERE user_id = $user_id AND gerecht_id= $gerecht_id AND record_type = 'F'";

        $result = mysqli_query($this->connection, $sql);
        if ($result) {
            $user = $this->selecteerUser($user_id);
            echo "Succesfully removed from favorites, " . $user["user_name"] . "!";
        }
    }
}
