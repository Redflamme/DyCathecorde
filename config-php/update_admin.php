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
    $nom = $_POST['nom'] ?? null;
    $email = $_POST['email'] ?? null;
    $id_admin = 1; // ID fixe de l'admin à modifier (à adapter si nécessaire)

    // Vérification des champs obligatoires
    if (empty($nom) || empty($email)) {
        echo "non"; // Champs obligatoires manquants
        exit;
    }

    // Validation de l'email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "non"; // Email invalide
        exit;
    }

    // Mise à jour des informations dans la base de données
    $query = "UPDATE admin SET nom = :nom, email = :email WHERE id_adm = :id";
    $stmt = $bdd->prepare($query);

    $success = $stmt->execute([
        ':nom' => $nom,
        ':email' => $email,
        ':id' => $id_admin
    ]);

    if (!$success) {
        echo "non"; // Échec de la mise à jour dans la base de données
        exit;
    }

    echo "oui"; // Succès
} catch (Exception $e) {
    echo "non"; // En cas d'erreur générale
}
