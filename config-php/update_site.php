<?php
require "../config-php/config.php"; // Inclusion du fichier de configuration pour la connexion à la base de données

ini_set('display_errors', 1);
error_reporting(E_ALL);

try {
    // Vérifiez si la requête est une méthode POST
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        echo "non"; // Requête invalide
        exit;
    }

    // Récupération des données du formulaire
    $domaine = $_POST['domaine'] ?? null;
    $auteur = $_POST['auteur'] ?? null;
    $tel = $_POST['tel'] ?? null;
    $emails = $_POST['emails'] ?? null;
    $adresse = $_POST['adresse'] ?? null;
    $slug = $_POST['slug'] ?? null;

    // Vérification des champs obligatoires
    if (empty($domaine) || empty($auteur) || empty($tel) || empty($emails) || empty($adresse) || empty($slug)) {
        echo "non"; // Champs obligatoires manquants
        exit;
    }

    // Mise à jour des informations dans la table `site`
    $query = "UPDATE site SET domaine = :domaine, auteur = :auteur, tel = :tel, emails = :emails, adresse = :adresse, slug = :slug WHERE id = 1"; // Adaptez la condition WHERE selon votre structure
    $stmt = $bdd->prepare($query);

    $success = $stmt->execute([
        ':domaine' => $domaine,
        ':auteur' => $auteur,
        ':tel' => $tel,
        ':emails' => $emails,
        ':adresse' => $adresse,
        ':slug' => $slug
    ]);

    if (!$success) {
        echo "non"; // Échec de la mise à jour
        exit;
    }

    echo "oui"; // Succès
} catch (Exception $e) {
    echo "non"; // En cas d'erreur
}
