<?php
require '../config-php/client.php';
require '../config-php/visiteur.php';


switch (true) {

    

    case ($bl != ''):
        if ($blogs->rowCount() > '0') {
            
            require '../view/blog.php';
        
        } else {
        
            require '../pages/erreur-404@.html';
        
        }
        
        

    break;

    case ($rose = true):

        require '../pages/erreur-404@.html';

    break;

    case ($blogs->rowCount() > '0'):

        require '../view/blog.php';

    break;
    
    default:   
        
}

?>