<?php
$options = array(
    PDO::ATTR_PERSISTENT => true,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
);
try {
    $pdo = new PDO(
        "mysql:host=localhost;dbname=postr;charset=utf8",
        "root",
        "",
        $options
    );
} catch (PDOException $e) {
    echo "Some error occurred, ", $e->getMessage();
}