<?php

class gerecht_info {

    private $connection;
    private $user;

    public function __construct($connection) {
        $this->connection = $connection;
        $this->user = new user($connection);
    }

    private function selecteerUser($user_id) {
        $user = $this->user->selecteerUser($user_id);
        return $user;
    }
    
    public function selecteerInfo($gerecht_id, $record_type) {


        $sql = "SELECT * FROM gerecht_info WHERE gerecht_id = $gerecht_id AND record_type = '$record_type'";
        $info = [];

        $result = mysqli_query ($this-> connection, $sql);
        while ( $row = mysqli_fetch_array($result, MYSQLI_ASSOC) ) {
            $user_id= $row ["user_id"];

            $user = $this->selecteerUser($user_id);
            
            if ( $row["record_type"] == "B") {
            $info [] = [
                "nummeriekveld" => $row ["nummeriekveld"],
                "tekstveld" => $row ["tekstveld"],
            ];
        }
            elseif ($row["record_type"] == "O") {
            $info [] = [
                "tekstveld" => $row ["tekstveld"],
                "user_name" => $user["user_name"]
            ];
        }
            elseif  ($row["record_type"] == "W") {
            $info [] = [
                "nummeriekveld" => $row ["nummeriekveld"],

            ];
        }
            elseif ( $row ["record_type"] == "F") {
            $info [] = [
                "user_name" =>$user["user_name"]
            ];
        }
        };
        return($info);
    }

    public function addFavorite ($user_id, $gerecht_id) {
        $record_type = 'F';
        
        $sql = "INSERT INTO gerecht_info (user_id, gerecht_id, record_type)
        VALUES ($user_id, $gerecht_id, '$record_type')";

        $result = mysqli_query($this -> connection, $sql);
        

        if ($result) {
            $user = $this->selecteerUser($user_id);
            echo "Succesfully added to your favorites, " . $user["user_name"] . "!" ;
            return (true);
        }


}
    public function deleteFavorite ($user_id, $gerecht_id) {
        $sql = "DELETE FROM gerecht_info WHERE user_id = $user_id AND gerecht_id= $gerecht_id AND record_type = 'F'";

        $result = mysqli_query($this -> connection, $sql);

        if ($result) {
            $user = $this->selecteerUser($user_id);
            echo "Succesfully removed from favorites, " . $user["user_name"] . "!" ;
            return (true);
        }
    }
}