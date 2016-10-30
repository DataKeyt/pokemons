<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pokemon";
$conn = mysqli_connect($servername, $username, $password, $dbname);

$name = $_GET["name"];
$story = $_GET["story"];

if (!empty($name && $story)) {

    $sql = "INSERT INTO pokemons (name, story) VALUES('$name', '$story')";

    mysqli_query($conn, $sql);
}

mysqli_close($conn);

echo "Pokemon added successfully!";