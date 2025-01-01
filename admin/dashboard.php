<?php
    require "../config-php/config.php";
    require './view/head.php';
    ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

?>
<body class="noscroll body">
    <div class="ddrt"></div>

    <div class="dash">
        
        <?php
            require './view/lf.php';
        ?>
        
        <div class="rg">
            <?php
                require './view/nav.php';

            ?>
            <?php
                if (isset($_GET['page'])) {
                    $page = $_GET['page'];
                }else {
                    $page = '';
                }
                
                if (isset($_SESSION['idADM'])) {
                    $admin = $_SESSION['idADM'];
                }else {
                    $admin = '';
                }

                if ($admin == '') {
                    ?>

                        <script>
                            document.getElementById('log').click();
                            // alert('<?=$admin?>');
                        </script>

                    <?php
                }

                switch (true) {

                    case ($page == 'dashboard'):
            
                        require './view/acceuil.php';
            
                    break;

                    case ($page == 'profil'):
            
                        require './view/profil.php';
            
                    break;

                    case ($page == 'projet'):
            
                        require './view/projet.php';
            
                    break;

                    case ($page == 'insertprojet'):
            
                        require './view/'.$page.'.php';
            
                    break;

                    case ($page == 'insertservice'):
            
                        require './view/'.$page.'.php';
            
                    break;

                    case ($page == 'inserttemoignage'):
            
                        require './view/'.$page.'.php';
            
                    break;

                    case ($page == 'insertblog'):
            
                        require './view/'.$page.'.php';
            
                    break;

                    case ($page == 'service'):
            
                        require './view/service.php';
            
                    break;

                    case ($page == 'temoignage'):
            
                        require './view/temoignage.php';
            
                    break;

                    case ($page == 'blog'):
            
                        require './view/blog.php';
            
                    break;

                    case ($page == 'profil'):
            
                        require './view/profil.php';
            
                    break;

                    case ($page == ''):
            
                        require '../pages/erreur-404.html';
            
                    break;

                    case ($page == ' ' || $page == '' || $page != 'dashboard' || $page != 'projet' || $page != 'service'
                    || $page != 'temoignage' || $page != 'blog' || $page != 'profil'):
            
                        require '../pages/erreur-404.html';
            
                    break;
                    
                    default:   
                        
                }


            
            ?>

            
            
        </div>
    </div>
</body>

<script src="../js/bootstrap.js"></script>
<script src="../js/theme.js"></script>
<script src="../js/jquery.js"></script>
<script src="../js/validation.js"></script>

</html>