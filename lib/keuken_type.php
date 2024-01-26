<?php

class keuken_type{

    private $connection;

    public function __construct($connection){
        $this->connection = $connection;
    }

    public function selecteerKeukenType($keuken_type_id){

        //query string maken
        $sql = "SELECT * FROM keuken_type WHERE id = $keuken_type_id";


        //query resultaten aanvragen en ophalen
        $result = mysqli_query($this->connection, $sql);

        //resultaten als een array ophalen
        $keuken_type = mysqli_fetch_array ($result, MYSQLI_ASSOC);

        return ($keuken_type);
    }
}