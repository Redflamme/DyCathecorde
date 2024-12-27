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
    $introduction = $_POST['description'] ?? null;
    $developpement = $_POST['html'] ?? null;
    $id_adm = $_SESSION['id_adm'] ?? 1; // Remplacez par la méthode appropriée pour récupérer l'ID de l'administrateur

    // Vérifiez les champs obligatoires
    if (empty($titre) || empty($introduction) || empty($developpement) || !isset($_FILES['image'])) {
        echo "non"; // Champs obligatoires manquants
        exit;
    }

    // Vérifiez si une image a été téléchargée
    if ($_FILES['image']['error'] !== UPLOAD_ERR_OK) {
        echo "non"; // Erreur dans le téléchargement de l'image
        exit;
    }

    // Créez le dossier pour stocker les images si nécessaire
    $uploadDir = '../asset/blog/';
    if (!is_dir($uploadDir) && !mkdir($uploadDir, 0777, true)) {
        echo "non"; // Échec de la création du dossier
        exit;
    }

    // Définir le chemin de l'image avec un nom unique basé sur l'ID
    $extension = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
    $imageFileName = uniqid() . '.' . $extension;
    $imagePath = $uploadDir . $imageFileName;

    // Déplacez l'image téléchargée vers le dossier cible
    if (!move_uploaded_file($_FILES['image']['tmp_name'], $imagePath)) {
        echo "non"; // Échec du déplacement de l'image
        exit;
    }

    // Insérez les données dans la base de données
    $query = "INSERT INTO blog (image, titre, introduction, developpement, date, id_adm) VALUES (:image, :titre, :introduction, :developpement, NOW(), :id_adm)";
    $stmt = $bdd->prepare($query);

    $success = $stmt->execute([
        ':image' => $imageFileName,
        ':titre' => $titre,
        ':introduction' => $introduction,
        ':developpement' => $developpement,
        ':id_adm' => $id_adm
    ]);

    if (!$success) {
        echo "non"; // Échec de l'insertion dans la base de données
        exit;
    }

    echo "oui"; // Succès
} catch (Exception $e) {
    echo "non"; // En cas d'erreur générale
}
