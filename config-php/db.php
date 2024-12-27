<?php
    $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
    $bdd = new PDO('mysql:host=localhost;dbname=dyc_db',
    'DyCathecorde',
    'Metal@slug2',
    $pdo_options);
    $bdd->exec('SET NAMES utf8');

?>