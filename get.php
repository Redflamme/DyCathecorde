// Récupération des données du formulaire
    $titre = $_POST['titre'] ?? null;
    $abreviation = $_POST['ab'] ?? null;
    $description = $_POST['description'] ?? null;
    $svg = $_POST['svg'] ?? null;


    // Insérez les informations dans la base de données
    $query = "INSERT INTO message (nom, email, tel, sujet, message, date) VALUES (:nom, :email, :tel, :sujet, :message, :date)";
    $stmt = $bdd->prepare($query);

    $success = $stmt->execute([
        ':nom' => $nom,
        ':email' => $email,
        ':tel' => $tel,
        ':sujet' => $sujet,
        ':message' => $message,
        ':date' => $date,
    ]);

    if (!$success) {
        echo "non"; // Échec de l'insertion dans la base de données
        exit;
    }

    echo "oui"; // Succès