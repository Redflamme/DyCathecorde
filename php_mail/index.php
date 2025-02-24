<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
require './PHPMailer/src/Exception.php';
require './PHPMailer/src/PHPMailer.php';
require './PHPMailer/src/SMTP.php';
// require '../config-php/config.php';
//hnnd qphf fmvh uxmm
//Create an instance; passing `true` enables exceptions

function envoie_mail($from_name,$from_email,$subject,$message){
    $mail = new PHPMailer();
    $mail->isSMTP();
    $mail->SMTPDebug = 0;
    $mail->SMTPSecure = 'ssl';
    $mail->Host       = 'smtp.gmail.com';
    $mail->SMTPAuth   = true;     
    $mail->Username   = 'juniorsineno@gmail.com';                     //SMTP username
    $mail->Password   = 'hnnd qphf fmvh uxmm';                               //SMTP password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
    $mail->Port       = 465;
    
    $society = "Dycathecorde";
    $mail->setFrom($from_email, $society);
    $mail->addAddress('juniorsineno@gmail.com','dycathecorde');
    $mail->isHTML(true);                                 
    $mail->Subject = $subject;
    $mail->Body    = '<!DOCTYPE html>
    <html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>
            *{margin: 0;padding: 0;box-sizing: border-box;}
            body{width: 100%;height: 100%;content: " ";background-color: black;color: white;}
            header{width: 100%;height: 180px;content: " ";background-color: black;color: white;display: flex;justify-content: center;align-items: center;}
            section{width: 100%;height: 100%;content: " ";background-color: rgba(33, 33, 33, 0.994);color: white;padding: 10.5px;}
            a{text-decoration: none;color: #E68737;}
            
        </style>
    </head>
    <body >
        
        <header>
            
        <img src="https://thumbs.dreamstime.com/z/enveloppe-d-avec-l-ic%C3%B4ne-du-point-interrogation-isol%C3%A9e-sur-le-fond-noir-lettre-symbole-tapez-la-demande-par-courriel-long-190974759.jpg?w=768" alt="" style="width: 100%;height: 100%;" srcset="">

        </header>
        <section>
            Envoyer par : <a href="mailto:'.$_POST["email"].'">'.$_POST["email"].'</a> <br>
            Téléphone : <a href="tel:+237'.$_POST["tel"].'">'.$_POST["tel"].'</a><br>
            <p class="message">
            '.$_POST["message"].' 
            </p>
            <br>
            <br>
            <p align="right">'.$_POST["name"].'</p>
        </section>
        <footer>
    
        </footer>
    </body>
    </html>';
    $mail->setLanguage('fr', '/optional/path/to/language/directory/');
    
    if (!$mail->Send()) {
        return false;
    }
    else {
        return true;
    }

}

if (envoie_mail($_POST['name'],$_POST['email'],$_POST['subject'],$_POST['message'])) {
    
    // Récupération des données du formulaire
    $date = date("Y-m-d");


    // Insérez les informations dans la base de données
    // $query = "INSERT INTO message (nom, email, tel, sujet, message, date) VALUES (:nom, :email, :tel, :sujet, :message, :date)";
    // $stmt = $bdd->prepare($query);

    // $success = $stmt->execute([
    //     ':nom' => $_POST['name'],
    //     ':email' => $_POST['email'],
    //     ':tel' => $_POST['tel'],
    //     ':sujet' => $_POST['subject'],
    //     ':message' => $_POST['message'],
    //     ':date' => $date,
    // ]);

    echo "oui"; // Succès

}
else {
    echo "non";
}
