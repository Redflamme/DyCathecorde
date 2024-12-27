<?php
require "../config-php/config.php";

ini_set('display_errors', 1);
error_reporting(E_ALL);

try {
    // Vérifiez si la requête est une méthode POST
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        echo "non"; // Requête invalide
        exit;
    }

    // Récupération des données du formulaire
    $titre = $_POST['titre'] ?? null;
    $abreviation = $_POST['ab'] ?? null;
    $description = $_POST['description'] ?? null;
    $svg = $_POST['svg'] ?? null;

    // Vérification des champs obligatoires
    if (empty($titre) || empty($abreviation) || empty($description) || empty($svg)) {
        echo "non"; // Champs obligatoires manquants
        exit;
    }

    // Insérez les informations dans la base de données
    $query = "INSERT INTO service (titre, abreviation, description, svg) VALUES (:titre, :abreviation, :description, :svg)";
    $stmt = $bdd->prepare($query);

    $success = $stmt->execute([
        ':titre' => $titre,
        ':abreviation' => $abreviation,
        ':description' => $description,
        ':svg' => $svg
    ]);

    if (!$success) {
        echo "non"; // Échec de l'insertion dans la base de données
        exit;
    }

    echo "oui"; // Succès
} catch (Exception $e) {
    echo "non"; // En cas d'erreur générale
}
