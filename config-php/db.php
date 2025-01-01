<?php
try {
    // Informations de connexion à la base de données
    $host = "dpg-ctnhuqtumphs73c6vp5g-a.frankfurt-postgres.render.com";
    $port = 5432; // Port par défaut pour PostgreSQL
    $dbname = "dyc_db";
    $username = "dyc_db_user";
    $password = "I8kdf3ax665bQJDfrte5GAicRpTMMeGt";

    // DSN pour PostgreSQL
    $dsn = "pgsql:host=$host;port=$port;dbname=$dbname";

    // Options PDO
    $pdo_options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    ];

    // Connexion à la base de données
    $bdd = new PDO($dsn, $username, $password, $pdo_options);
    // echo "Connexion réussie à PostgreSQL.";
} catch (PDOException $e) {
    // Gestion des erreurs
    echo "Erreur de connexion : " . $e->getMessage();
}
?>
