<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pokemon";
$rows = [];

// define host name and database name
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $id = empty($_GET['id']) ? [] : explode(',', $_GET['id']);
    $link = mysqli_connect($servername, $username, $password, $dbname);

    if (!empty($id)) {

        $sql = "DELETE FROM pokemons WHERE pokemon_id IN (?)";

        $stmt = $conn->prepare($sql);
    }

    $stmt->execute($id);

    echo "Pokemon deleted successfully!";
} catch
(PDOException $e) {
    /*$error_message = $e->getMessage();
    echo "this is displayed because an error was found";
    echo $error_message;*/
    exit();
}

?>