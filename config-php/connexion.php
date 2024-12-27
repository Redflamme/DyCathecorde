<?php
require "../config-php/config.php";

// Pour le test
// $_POST['mail'] = 'dycathecorde@gmail.com';
// $_POST['mdp'] = 'iii';

/****ADMINISTRATEURS */
$emailadm = $_POST['mail'];
$stmtadm = $bdd->prepare("SELECT * FROM admin WHERE email=?");
$stmtadm->execute([$emailadm]);

if ($stmtadm->rowCount() == 0) {
    // Si aucun email correspondant n'est trouvé
    echo 'email_incorrect';
} else {
    // Si l'email est trouvé, vérifier le mot de passe
    $mdpadm = $_POST['mdp'];
    $stmpadm = $bdd->prepare("SELECT * FROM admin WHERE email=? AND mdp=?");
    $stmpadm->execute([$emailadm, $mdpadm]);
    
    if ($stmpadm->rowCount() == 0) {
        // Si le mot de passe ne correspond pas
        echo 'mot_de_passe_incorrect';
    } else {
        // Succès
        $data = $stmpadm->fetch();
        $_SESSION['idADM'] = $data['id_adm'];
        echo 'adm_success';
    }
}
?>
