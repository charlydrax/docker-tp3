<?php
$mysqli = new mysqli('data2', 'monuser', 'password', 'mabase');

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}

// Exécution de l'insertion
if ($mysqli->query("INSERT INTO matable (compteur) SELECT count(*)+1 FROM matable;") === TRUE) {
    echo "Count updated<br />";
} else {
    echo "Error during insert: " . $mysqli->error . "<br />";
}

// Sélection des données
$result = $mysqli->query("SELECT * FROM matable");

if ($result) {
    printf("Count : %d<br />", $result->num_rows);
    $result->close();
} else {
    echo "Error during select: " . $mysqli->error . "<br />";
}

$mysqli->close();
?>
