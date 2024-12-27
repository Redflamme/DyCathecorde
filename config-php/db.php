<?php
try {
    // Récupération des variables d'environnement
    $host = getenv('DB_HOST') ?: 'localhost';
    $dbname = getenv('DB_NAME') ?: 'dyc_db';
    $username = getenv('DB_USER') ?: 'DyCathecorde';
    $password = getenv('DB_PASSWORD') ?: 'Metal@slug2';
    $charset = getenv('DB_CHARSET') ?: 'utf8';

    // Options PDO
    $pdo_options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES $charset"
    ];

    // Connexion à la base de données
    $bdd = new PDO("mysql:host=$host;dbname=$dbname", $username, $password, $pdo_options);
} catch (PDOException $e) {
    // Gestion des erreurs
    echo "Erreur de connexion : " . $e->getMessage();
}
?>
