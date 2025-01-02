<?php
require 'db.php';



//projet

$projet = $bdd->query("SELECT * FROM projet ORDER BY id DESC");
// $countP = $projet->rowCount();

//temoignage

$temoignage = $bdd->query("SELECT * FROM temoignage");
// $countT = $temoignage->rowCount();


//service

$service = $bdd->query("SELECT * FROM service ORDER BY id DESC");

//blog

$blog = $bdd->query("SELECT * FROM blog ORDER BY RANDOM() LIMIT 3");

if (isset($_GET['ipop'])) {
    
    $bl = $_GET['ipop'];
    $rose = false;

    if ($bl != '') {
        
        $blogs = $bdd->query('SELECT * FROM blog WHERE id='. $bl .' ');
        $dataBs = $blogs->fetch();

        if ($blogs->rowCount() > 0) {
            $admins = $bdd->query('SELECT image,nom FROM admin WHERE id_adm='. $dataBs['id_adm'] .' ');
            $dataAdx = $admins->fetch();
        
            $LS = $bdd->query('SELECT * FROM blog WHERE id != '. $dataBs['id_adm'] .' ORDER BY RANDOM() LIMIT 3');
            $rose = false;
}else {
            $rose = true;
        }

    }

    
    
    
    
} else {
    
    $bl = '';

}




//social

$socials = $bdd->query("SELECT * FROM social ORDER BY id DESC");

//site

$site = $bdd->query("SELECT * FROM site WHERE id = 1");
$dataSi = $site->fetch();


function getmd($date) {
    // Extrait le mois et le jour d'une date au format YYYY-MM-DD
    $timestamp = strtotime($date);
    return date('M d', $timestamp); // Retourne le mois abrégé et le jour (ex : "Dec 16")
}

function getY($date) {
    // Extrait l'année d'une date au format YYYY-MM-DD
    $timestamp = strtotime($date);
    return date('Y', $timestamp); // Retourne l'année (ex : "2024")
}

// DATE FORMAT

function formatDateToReadable($date) {
    // Convertir la chaîne de date en objet DateTime
    $dateTime = DateTime::createFromFormat('Y-m-d', $date);

    // Vérifier si la date est valide
    if (!$dateTime) {
        return "Date invalide";
    }

    // Retourner la date formatée
    return $dateTime->format('d M Y');
}

// HEURE FORMAT

function formatTimeToReadable($time) {
    // Convertir la chaîne de temps en objet DateTime
    $dateTime = DateTime::createFromFormat('H:i:s', $time);

    // Vérifier si l'heure est valide
    if (!$dateTime) {
        return "Heure invalide";
    }

    // Retourner l'heure formatée
    return $dateTime->format('H\Hi');
}

// Reduit text

function truncateToWords($text, $wordLimit = 30) {
    // Découper le texte en mots
    $words = explode(' ', $text);

    // Vérifier si le texte dépasse la limite
    if (count($words) <= $wordLimit) {
        return $text; // Retourner le texte original si le nombre de mots est inférieur ou égal à la limite
    }

    // Garder seulement les premiers mots jusqu'à la limite
    $truncated = array_slice($words, 0, $wordLimit);

    // Joindre les mots tronqués avec un espace
    return implode(' ', $truncated) . '...'; // Ajouter "..." à la fin pour indiquer une coupure
}

// Lettre profil

function letter($name) {
    // Convertir le nom en minuscules pour uniformité
    $name = strtolower(trim($name));
    
    // Vérifier si le nom est vide après la suppression des espaces
    if (empty($name)) {
        return '';
    }
    
    // Retourner la première lettre alphabétique du nom
    foreach (str_split($name) as $char) {
        if (ctype_alpha($char)) {
            return $char;
        }
    }
    
    // Si aucune lettre alphabétique n'est trouvée, retourner une chaîne vide
    return '';
}

// Color letter

function colorletter($letter) {
    switch (strtolower($letter)) {
        case 'a':
            return 'rgb(255, 182, 193)'; // Rose clair
        case 'b':
            return 'rgb(255, 223, 186)'; // Pêche
        case 'c':
            return 'rgb(255, 255, 204)'; // Jaune pâle
        case 'd':
            return 'rgb(144, 238, 144)'; // Vert clair
        case 'e':
            return 'rgb(224, 255, 255)'; // Bleu clair
        case 'f':
            return 'rgb(173, 216, 230)'; // Bleu ciel
        case 'g':
            return 'rgb(216, 191, 216)'; // Lavande
        case 'h':
            return 'rgb(238, 130, 238)'; // Violet clair
        case 'i':
            return 'rgb(255, 240, 245)'; // Rose léger
        case 'j':
            return 'rgb(255, 228, 196)'; // Bisque
        case 'k':
            return 'rgb(245, 245, 220)'; // Beige clair
        case 'l':
            return 'rgb(175, 238, 238)'; // Turquoise clair
        case 'm':
            return 'rgb(221, 160, 221)'; // Orchidée clair
        case 'n':
            return 'rgb(240, 255, 255)'; // Bleu Alice
        case 'o':
            return 'rgb(255, 204, 153)'; // Orange clair
        case 'p':
            return 'rgb(255, 218, 185)'; // Pêche pâle
        case 'q':
            return 'rgb(255, 192, 203)'; // Rose vif
        case 'r':
            return 'rgb(255, 160, 122)'; // Saumon
        case 's':
            return 'rgb(152, 251, 152)'; // Vert printanier clair
        case 't':
            return 'rgb(244, 164, 96)'; // Sable
        case 'u':
            return 'rgb(238, 232, 170)'; // Jaune clair
        case 'v':
            return 'rgb(143, 188, 143)'; // Vert clair pâle
        case 'w':
            return 'rgb(224, 255, 255)'; // Cyan clair
        case 'x':
            return 'rgb(240, 248, 255)'; // Bleu clair pâle
        case 'y':
            return 'rgb(193, 255, 193)'; // Vert clair menthe
        case 'z':
            return 'rgb(255, 228, 196)'; // Beige doux
        default:
            return 'rgb(211, 211, 211)'; // Gris clair pour les caractères non alphabétiques
    }
}
