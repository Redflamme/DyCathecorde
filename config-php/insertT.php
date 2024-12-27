<?php
require "../config-php/config.php";

ini_set('display_errors', 1);
error_reporting(E_ALL);

try {
    if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        echo "Erreur : Requête invalide.";
        exit;
    }

    // Vérifiez les champs obligatoires
    $nom = $_POST['nom'] ?? null;
    $description = $_POST['description'] ?? null;
    $metier = $_POST['lang'] ?? null;

    if (empty($nom) || empty($description) || empty($metier)) {
        echo "Erreur : Veuillez remplir tous les champs obligatoires.";
        exit;
    }

    // Vérifiez si une image a été téléchargée
    if (!isset($_FILES['image']) || $_FILES['image']['error'] !== UPLOAD_ERR_OK) {
        echo "Erreur : Image manquante ou problème lors du téléchargement.";
        exit;
    }

    // Créez le dossier s'il n'existe pas
    $uploadDir = '../asset/temoin/';
    if (!is_dir($uploadDir) && !mkdir($uploadDir, 0777, true)) {
        echo "Erreur : Impossible de créer le dossier pour les images.";
        exit;
    }

    // Insérez les informations dans la base de données
    $query = "INSERT INTO temoignage (nom, metier, description) VALUES (:nom, :metier, :description)";
    $stmt = $bdd->prepare($query);

    if (!$stmt->execute([':nom' => $nom, ':metier' => $metier, ':description' => $description])) {
        echo "Erreur : Échec de l'insertion des données dans la base.";
        exit;
    }

    // Récupérer l'ID généré
    $temoignageId = $bdd->lastInsertId();

    // Définir le chemin de l'image avec l'ID comme nom
    $extension = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
    $imagePath = $uploadDir . $temoignageId . '.' . $extension;

    // Déplacer l'image téléchargée
    if (!move_uploaded_file($_FILES['image']['tmp_name'], $imagePath)) {
        echo "Erreur : Échec lors du déplacement de l'image.";
        exit;
    }

    // Mettre à jour le champ `image` dans la base de données
    $updateQuery = "UPDATE temoignage SET image = :image WHERE id = :id";
    $updateStmt = $bdd->prepare($updateQuery);

    if (!$updateStmt->execute([':image' => $temoignageId . '.' . $extension, ':id' => $temoignageId])) {
        echo "Erreur : Échec de la mise à jour du chemin de l'image dans la base.";
        exit;
    }

    echo "Succès : Témoignage ajouté avec succès.";
} catch (Exception $e) {
    echo "Erreur serveur : " . $e->getMessage();
}
