<?php
require "../config-php/config.php";

// Vérifiez si une requête POST a été envoyée
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Récupération des données du formulaire
    $titre = $_POST['titre'] ?? '';
    $description = $_POST['description'] ?? '';
    $fini = $_POST['terminer'] ?? '';
    $languages = $_POST['lang'] ?? '';
    $lien = $_POST['lien'] ?? null;

    // Vérifiez si une image a été téléchargée
    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        try {
            // Créez le dossier s'il n'existe pas
            $uploadDir = '../asset/projet/';
            if (!is_dir($uploadDir)) {
                mkdir($uploadDir, 0777, true);
            }

            // Insérez les informations dans la base de données (sans l'image pour l'instant)
            $query = "INSERT INTO projet (titre, description, fini, lien, languages) VALUES (:titre, :description, :fini, :lien, :languages)";
            $stmt = $bdd->prepare($query);
            $stmt->execute([
                ':titre' => $titre,
                ':description' => $description,
                ':fini' => $fini,
                ':lien' => $lien,
                ':languages' => $languages,
            ]);

            // Récupérer l'ID généré
            $projectId = $bdd->lastInsertId();

            // Définir le chemin de l'image avec l'ID comme nom
            $extension = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
            $imagePath = $uploadDir . $projectId . '.' . $extension;

            // Déplacer l'image téléchargée
            if (move_uploaded_file($_FILES['image']['tmp_name'], $imagePath)) {
                // Mettre à jour le chemin de l'image dans la base de données
                $updateQuery = "UPDATE projet SET image = :image WHERE id = :id";
                $updateStmt = $bdd->prepare($updateQuery);
                $updateStmt->execute([
                    ':image' => $projectId . '.' . $extension,
                    ':id' => $projectId,
                ]);

                echo "oui"; // Succès
            } else {
                echo "non"; // Échec du déplacement de l'image
            }
        } catch (Exception $e) {
            echo "non"; // En cas d'erreur
        }
    } else {
        echo "non"; // Aucune image téléchargée
    }
} else {
    echo "non"; // Requête invalide
}

?>
