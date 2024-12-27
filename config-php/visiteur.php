<?php

// Vérification si l'utilisateur a déjà visité le site via un cookie
if (isset($_COOKIE['user_visited'])) {
    
}else {
    // Récupération des informations du navigateur
    function getBrowserInfo() {
        $userAgent = $_SERVER['HTTP_USER_AGENT'];
        $interface = 'PC'; // Par défaut, considéré comme un PC

        if (preg_match('/mobile|android|iphone|ipad|tablet/i', $userAgent)) {
            if (preg_match('/ipad|tablet/i', $userAgent)) {
                $interface = 'Tablette';
            } else {
                $interface = 'Mobile';
            }
        }

        return [
            'interface' => $interface,
            'device' => $userAgent,
            'date' => date('Y-m-d'), // Date actuelle au format YYYY-MM-DD
            'heure' => date('H:i:s'), // Heure actuelle au format HH:MM:SS
        ];
    }

    // Récupérer les informations
    $visiteurData = getBrowserInfo();

    try {
        // Préparer la requête pour insérer les données
        $query = $bdd->prepare("INSERT INTO visite (interface, device, date, heure) VALUES (:interface, :device, :date, :heure)");
        $query->bindParam(':interface', $visiteurData['interface']);
        $query->bindParam(':device', $visiteurData['device']);
        $query->bindParam(':date', $visiteurData['date']);
        $query->bindParam(':heure', $visiteurData['heure']);

        // Exécuter la requête
        if ($query->execute()) {
            // Si l'enregistrement est réussi, définir un cookie pour indiquer que l'utilisateur a visité
            setcookie('user_visited', true, time() + (365 * 24 * 60 * 60)); // Cookie valide pour 1 an
            // echo "Visite enregistrée avec succès.";
        } else {
            // echo "Erreur lors de l'enregistrement de la visite.";
        }
    } catch (PDOException $e) {
        // echo "Erreur de base de données : " . $e->getMessage();
    }    
}


?>
