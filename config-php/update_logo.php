<?php
require "../config-php/config.php";

// Vérifiez si une requête POST a été envoyée
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Vérifiez si une image a été téléchargée
    if (isset($_FILES['image']) ) {
        try {
            // Créez le dossier s'il n'existe pas
            $uploadDir = '../asset/icon/';
            if (!is_dir($uploadDir)) {
                mkdir($uploadDir, 0777, true);
            }

            
            // Récupérer l'ID généré
            $projectId = logo;

            // Définir le chemin de l'image avec l'ID comme nom
            $extension = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
            $imagePath = $uploadDir . $projectId . '.' . $extension;

            // Déplacer l'image téléchargée
            if (move_uploaded_file($_FILES['image']['tmp_name'], $imagePath)) {
                

                header('location:../admin/dashboard.php?page=profil');
            } else {
                header('location:../admin/dashboard.php?page=profil');
            }
        } catch (Exception $e) {
            header('location:../admin/dashboard.php?page=profil');
        }
    } else {
        header('location:../admin/dashboard.php?page=profil');
    }
} else {
    header('location:../admin/dashboard.php?page=profil');
}

?>
