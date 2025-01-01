<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dycathecode</title>
    <link rel="stylesheet" href="../web-fonts-with-css/css/fontawesome.min.css">
    <link rel="stylesheet" href="../web-fonts-with-css/css/all.min.css">
    <link rel="stylesheet" href="../web-fonts-with-css/css/all.css">
    <link rel="stylesheet" href="../css/color.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/blog.css">
    <link rel="stylesheet" href="../css/compossants.css">
    <link rel="stylesheet" href="../css/mobile.css">
    <link rel="stylesheet" href="../css/tablette.css">
    <link rel="stylesheet" href="../css/boostrap.css">
    <link rel="stylesheet" href="../css/cdn.jsdelivr.net_npm_swiper@10.1.0_swiper-bundle.min.css">
    <!-- <script src="./js/jquery.js"></script> -->
    <link rel="shortcut icon" href="../asset/icon/logo.ico">
    <?php 
        require '../view/seo.php';
    ?>



</head>
<div class="background" style="top: 0;"></div>

<body class="body noscroll" id="top">
    <div class="loader">

        <div class="container">
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
          </div>
    </div>

    <div class="notification " id="notification">
        <div class="bs-toast toast fade show bg-success mood" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
                <i class="bx bx-bell me-2"></i>
            <div class="me-auto fw-semibold">Succes</div>
                <small>aujourd'hui</small>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                Merci pour votre message nous vous contacterons bientôt.
            </div>
            <div class="bar_tim" id="positif">
                
            </div>
        </div>
    </div>

    <div class="notificationx">
        <div class="bs-toast toast fade show bg-danger mood" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
              <i class="bx bx-bell me-2"></i>
              <div class="me-auto fw-semibold">Echec</div>
              <small>aujourd'hui</small>
              <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                Vérifier votre connection internet.
            </div>
            <div class="bar_tim" id="negatif">
                
            </div>              
        </div>
    </div>

    <div class="hau">
        <div>
            <a href="../index.php">
                <button class="rblog">
                    <i class="fa fa-arrow-left" aria-hidden="true"></i>
                </button>
            </a>
        </div>
        <div class="checkbox-wrapper-51">
            <input id="cbx-51" type="checkbox" onclick="theme_change()">
            <label class="toggle" for="cbx-51">
                <span>
                <svg viewBox="0 0 10 10" height="10px" width="10px">
                    <path d="M5,1 L5,1 C2.790861,1 1,2.790861 1,5 L1,5 C1,7.209139 2.790861,9 5,9 L5,9 C7.209139,9 9,7.209139 9,5 L9,5 C9,2.790861 7.209139,1 5,1 L5,9 L5,1 Z"></path>
                </svg>
                </span>
            </label>
        </div>
    </div>


    <!-- Header -->
    <header class="blog-header" style="height: 100%;">
        <div class="dflex-center">
            <div class="long">
                <div>
                    <div class="profil">
                        <div class="imgs">
                            <img src="../asset/admin/<?=$dataAdx['image']?>" class="imgprof" alt="<?=$dataSi['slug']?>">
                        </div>
                        <div class="nomx">
                            <span class="tex">
                            <?=$dataAdx['nom']?>
                            </span>
                        </div>
                    </div>
                </div>
                <div>
                    <span class="tex">
                        Publier le <?=formatDateToReadable($dataBs['date'])?>
                    </span>
                </div>
            </div>
            
            <div class="introduction">
                <h2 class="h2">
                    <?=$dataBs['titre']?>
                </h2>

                <p>
                    <?=$dataBs['introduction']?>
                </p>  
            </div>
            <div class="image">
                <img src="../asset/blog/<?php echo $dataBs['image'];?>" alt="referrence" srcset="" class="imgprof">
            </div>
            <div class="developpement">
                <?=$dataBs['developpement']?>
            </div>
        </div>
    </header>

    <section class="sectionpad padding" style="padding-bottom: 1cm;padding-top: 1cm;">
       
        <div class="blog-list">
            <?php
                        
                while ( $dataB = $LS->fetch()) {

                    ?>

                        <div class="cardxxx reveal-3">
                            <div class="date-time-container">
                                <time class="date-time" datetime="<?=$dataB['date']?>">
                                <span><?=getY($dataB['date'])?></span>
                                <span class="separator"></span>
                                <span><?=getmd($dataB['date'])?></span>
                                </time>
                            </div>
                            
                            <div class="content">
                            
                                <div style="width: 100%;height: 5cm;">
                                    <img src="../asset/blog/<?=$dataB['image']?>" style="width: 100%;height: 100%;opacity: 90%;" alt="<?=$dataSi['slug']?>" srcset="">
                                </div>   
                                <div class="infos">
                                        <span class="title">
                                            <?=$dataB['titre']?>
                                        </span>

                                    <p class="description">
                                        <?=$dataB['introduction']?>
                                    </p>
                                </div>

                                <a class="action" href="./blog.php?ipop=<?=$dataB['id']?>">
                                    Plus
                                </a>
                            </div>
                        </div>
                    
                    <?php

                }
                    
            ?>

        </div>
    </section>
    <div class="ddrt"></div>
       
    <?php   
        // require '../view/footer.php';
    ?>


<script src="../js/theme.js"></script>
<script src="../js/swiper-bundle.min.js"></script>
<script src="../js/app.js"></script>
<!-- <script src="../js/scroll.js"></script> -->
<script src="../js/jquery.js"></script>
<script src="../js/form.js"></script>
<script src="../js/bootstrap.js"></script>
    
    
</body>
</html>
