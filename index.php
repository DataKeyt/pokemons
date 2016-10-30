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
    $limit = empty($_GET['limit']) ? [] : explode(',', $_GET['limit']);


    if (empty($limit)) {

        $stmt = $conn->prepare("SELECT * FROM pokemons");

    } else {

        $limiting = ($_GET['limit']);

        $sql = "SELECT * FROM pokemons LIMIT $limiting";

        $stmt = $conn->prepare($sql);

    }

    $stmt->execute($limit);

    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

    $json = json_encode($rows, JSON_PRETTY_PRINT);
    printf("<pre>%s</pre>", $json);

} catch

(PDOException $e) {
    $error_message = $e->getMessage();
    echo "this is displayed because an error was found";
    echo $error_message;
    exit();
}

?>