<?php
require "../config-php/config.php";

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])) {
    $id = (int) $_GET['id']; // Récupérer l'ID du projet à supprimer

    try {
        // Récupérer le chemin de l'image associée à l'ID
        $query = "SELECT image FROM projet WHERE id = :id";
        $stmt = $bdd->prepare($query);
        $stmt->execute([':id' => $id]);
        $projet = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($projet) {
            $imagePath = '../asset/projet/' . $projet['image'];

            // Supprimer le fichier image
            if (file_exists($imagePath)) {
                unlink($imagePath); // Supprime l'image
            }

            // Supprimer l'entrée de la base de données
            $deleteQuery = "DELETE FROM projet WHERE id = :id";
            $deleteStmt = $bdd->prepare($deleteQuery);
            $deleteStmt->execute([':id' => $id]);

            echo "oui"; // Succès
            header("Location: ../admin/dashboard.php?page=projet");
        } else {
            echo "non"; // Aucun projet trouvé avec cet ID
            header("Location: ../admin/dashboard.php?page=projet");
        }
    } catch (Exception $e) {
        echo "non"; // En cas d'erreur
        header("Location: ../admin/dashboard.php?page=projet");
    }
} else {
    echo "non"; // Requête invalide
    header("Location: ../admin/dashboard.php?page=projet");
}
?>
