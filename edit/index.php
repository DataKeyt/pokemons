<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pokemon";
$conn = mysqli_connect($servername, $username, $password, $dbname);

$id = $_GET{"id"};
$name = $_GET["name"];
$story = $_GET["story"];

if (!empty($name && $story)) {

    $sql = "UPDATE pokemons SET name='$name', story='$story' WHERE pokemon_id = '$id'";

    mysqli_query($conn, $sql);

    echo "Pokemon updated successfully!";

    mysqli_close($conn);
} else {
    echo "Something went wrong!";
}

