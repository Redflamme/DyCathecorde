<?php
require "../config-php/config.php";

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])) {
    $id = (int) $_GET['id']; // Récupérer l'ID du service à supprimer

    try {
        
        // Supprimer l'entrée de la base de données
        $deleteQuery = "DELETE FROM service WHERE id = :id";
        $deleteStmt = $bdd->prepare($deleteQuery);
        $deleteStmt->execute([':id' => $id]);

        echo "oui"; // Succès
        header("Location: ../admin/dashboard.php?page=service");

        
    } catch (Exception $e) {
        echo "non"; // En cas d'erreur
        header("Location: ../admin/dashboard.php?page=service");
    }
} else {
    echo "non"; // Requête invalide
    header("Location: ../admin/dashboard.php?page=service");
}
?>
