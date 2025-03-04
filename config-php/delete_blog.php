<?php
require "../config-php/config.php";

if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['id'])) {
    $id = (int) $_GET['id']; // Récupérer l'ID du blog à supprimer

    try {
        // Récupérer le chemin de l'image associée à l'ID
        $query = "SELECT image FROM blog WHERE id = :id";
        $stmt = $bdd->prepare($query);
        $stmt->execute([':id' => $id]);
        $blog = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($blog) {
            $imagePath = '../asset/blog/' . $blog['image'];

            // Supprimer le fichier image
            if (file_exists($imagePath)) {
                unlink($imagePath); // Supprime l'image
            }

            // Supprimer l'entrée de la base de données
            $deleteQuery = "DELETE FROM blog WHERE id = :id";
            $deleteStmt = $bdd->prepare($deleteQuery);
            $deleteStmt->execute([':id' => $id]);

            echo "oui"; // Succès
            header("Location: ../admin/dashboard.php?page=blog");
        } else {
            echo "non"; // Aucun blog trouvé avec cet ID
            header("Location: ../admin/dashboard.php?page=blog");
        }
    } catch (Exception $e) {
        echo "non"; // En cas d'erreur
        header("Location: ../admin/dashboard.php?page=blog");
    }
} else {
    echo "non"; // Requête invalide
    header("Location: ../admin/dashboard.php?page=blog");
}
?>
