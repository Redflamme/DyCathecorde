<?php
    require '../config-php/client.php';
    require '../config-php/visiteur.php';
?>
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

</head>


<div class="background"></div>
<div class="containerxx "></div>
<div class="cvo">
    <div class="e-cardx playingx" >
        <div class="image"></div>
        
        <div class="wavex"></div>
        <div class="wavex"></div>
        <div class="wavex"></div>
    </div>    
</div>
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
    <!-- Header -->
    <header class="header">
        <!-- NAV -->
        <nav class="padding" id="nav1">
            <div class="left">
                <a href="./index.php">
                    <div class="logo">
                        <span class="d">D</span>
                        <span class="y">y</span>
                        <span class="c">C</span>
                        <!-- <embed src="./asset/img/logo.png" type="">	 -->
                    </div>
                </a>
            </div>
            <div class="btn-barre" onclick="btn_menu()">
                <div class="bar-verticale"></div>
            </div>
            <div class="right menu">
                <ul class="ul">
                    <div onclick="about()">
                        <button class="item bt" >À propos</button>
                    </div>
                    <div href="#" onclick="services()">
                        <button class="item bt" >Services</button>
                    </div>
                    <div href="#" onclick="portfolio()">
                        <button class="item bt">Projets</button>
                    </div>
                    <div href="#" onclick="termoignage()">    
                        <button class="item bt">Témoignages</button>
                    </div>
                    <div href="#"  onclick="blog()">
                        <button class="item bt">Blogs</button>
                    </div>
                    <div href="#"  onclick="contactus()">
                        <button class="item bt">Contact</button>
                    </div>
                    <div class="checkbox-wrapper-51" style="transform: translateY(40px)">
                        <input id="cbx-51" type="checkbox" onclick="theme_change()">
                        <label class="toggle" for="cbx-51">
                            <span>
                            <svg viewBox="0 0 10 10" height="10px" width="10px">
                                <path d="M5,1 L5,1 C2.790861,1 1,2.790861 1,5 L1,5 C1,7.209139 2.790861,9 5,9 L5,9 C7.209139,9 9,7.209139 9,5 L9,5 C9,2.790861 7.209139,1 5,1 L5,9 L5,1 Z"></path>
                            </svg>
                            </span>
                        </label>
                    </div>



                    
                </ul>
                
            </div>
        </nav>

        <nav class="padding" id="nav2">
            <div class="left">
                <a href="./index.php">
                    <div class="logo">
                        <span class="d">D</span>
                        <span class="y">y</span>
                        <span class="c">C</span>
                        <!-- <embed src="./asset/img/logo.png" type="">	 -->
                    </div>
                </a>
            </div>
            
            <div class="right menu">
                <ul class="ul">
                    <button class="btn btn-primary" type="button" style="font-size: 28px;color: var(--orange);transform: translateY(15px);" data-bs-toggle="offcanvas" data-bs-target="#offcanvasStart" aria-controls="offcanvasStart">
                        <i class="fa fa-bars" aria-hidden="true"></i>
                    </button>
                    
                </ul>
                
            </div>
        </nav>
        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasStart" aria-labelledby="offcanvasStartLabel" style="visibility: visible;background: var(--noire);" aria-modal="true" role="dialog">
            <div class="offcanvas-header" style="border-bottom:1px solid var(--border) ;">
                <div class="logo" style="transform: translateY(-24px);">
                    <a href="./index.php">
                        <div class="logo">
                            <span class="d">D</span>
                            <span class="y">y</span>
                            <span class="c">C</span>
                            <!-- <embed src="./asset/img/logo.png" type="">	 -->
                        </div>
                    </a>
                </div>
              <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="nan" style="overflow-y: scroll;height: 100%;">
                <div>
                    <button onclick="about()" class="bvb" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasStart" aria-controls="offcanvasStart" onclick="b1()">
                        À propos
                    </button>
                </div>
                <div>
                    <button onclick="services()" class="bvb" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasStart" aria-controls="offcanvasStart" onclick="b2()">
                        Services
                    </button>
                </div>
                <div>
                    <button class="bvb" onclick="portfolio()" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasStart" aria-controls="offcanvasStart">
                        Projets
                    </button>
                </div>
                <div>
                    <button class="bvb" onclick="termoignage()" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasStart" aria-controls="offcanvasStart">
                        Témoignages
                    </button>
                </div>
                <div>
                    <button class="bvb" onclick="blog()" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasStart" aria-controls="offcanvasStart">
                        Blogs
                    </button>
                </div>
                <div>
                    <button class="bvb" onclick="contactus()" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasStart" aria-controls="offcanvasStart">
                        Contact
                    </button>
                </div>
                <div class="padding" style="display: flex;justify-content: space-between;line-height: 80px;">
                    <div >
                        <div  style="display: flex;align-items: flex-end;justify-content: center;">
                            <span style="color: var(--blanc);letter-spacing: 1px;text-transform: uppercase;font-size: 13px;">
                                Mode
                            </span>
                        </div>
                    </div>
                    <div style="display: flex;align-items: center;">
                        <input class="switch" type="checkbox" onclick="theme_change()" checked="true">
                    </div>
                </div>
            </div>
          </div>
        <!-- Presentation -->
        <div class="presentation">
            <div class="titre">
                <div class="element e1 reveal-1">
                    <div class="suis">
                        Salut, je suis
                    </div>
                </div>

                

                <div class="element e2 reveal-2">
                    <div class="text">M. Junior <span class="tom">sineno</span></div>
                </div>
                <div class="element e4 reveal-3">
                    Développeur Web design.
                </div>
                <div class="element e3 reveal-4">
                        <button class="button" onclick="telechargerFichier()">
                            Télécharger mon CV
                        </button>
                        

                </div>
            </div>
            <!-- <div class="titre portrait reveal-1">
                <embed class="reveal" src="./asset/img/mon_portrai.png" type="">
            </div> -->
            <script>
                
            </script>
        </div>
        <div class="indicateur">
            <div class="bord">
                <i class="fa fa-long-arrow-down" aria-hidden="true"></i>
            </div>
        </div>

        <!-- Image portrait en font d ecran -->
        <div class="imagefont">
            <div class="ddrt">
                <embed id='i11' src="./asset/img/1.png" type="">
                <embed id='i22' src="./asset/img/2.png" type="">
            </div>
        </div>
        <div id="about"></div>
    </header>

<div class="bbbxxx" style="background-color: var(--noire);transition: .3s background;">
        <!-- Section -->
        <section>
            <!-- A propos -->
            <div class="dashed">
                    <div class="trait"></div>
                </div>
                <div class="text-align-center">
                    <div class="titre reveal-1">
                        À propos
                    </div>
                </div>
            <div class="about reveal">
                <div class="left">
                    <div class="img">
                        <embed src="./asset/img/tapette.png" id="i1" height="100%" type="">
                        <embed src="./asset/img/mon_portrai.png" id="i2" height="100%" type="">
                    </div>
                    <div class="experience">
                        <div class="text">
                            <div class="txtxx" id='timeXP'>03</div>
                            <div class="txtxx">Années d’expérience</div>
                        </div>
                    </div>

                    <script>
                        let timer = document.getElementById('timeXP');
                        let date_debut = 2021;
                        let date_fin = 2024;
                        Txp = date_fin - date_debut;
                        timer.innerHTML= '0' + Txp;
                    </script>

                </div>
                
                <div class="right" id="ici1">
                    <div class="t0">
                        <div class="t1 align">
                            À propos de moi!
                        </div>
                        <p class="t2 align">
                            Développeur web spécialisé en HTML, CSS, JavaScript (JS) et PHP, j'ai acquis une solide expertise dans la création d'interfaces utilisateur attrayantes et réactives. Mon expérience dans la conception et le développement de sites web me permet de créer des expériences utilisateur conviviales et intuitives. Je suis passionné par l'optimisation des performances et le respect des normes de codage. Mon objectif principal est de fournir des solutions web de haute qualité qui répondent aux besoins des utilisateurs tout en respectant les délais et les exigences du projet.
                        </p>
                    </div>
                    <div class="level">
                        <div class="lvl">
                            <div class="text">HTML <span id="html"></span></div>
                            <div class="bar">
                                <div class="remplir html" ></div>
                            </div>
                        </div>
                        <div class="lvl">
                            <div class="text">CSS <span id="css"></span></div>
                            <div class="bar">
                                <div class="remplir css" title="100%" style="width: 100%;"></div>
                            </div>
                        </div>
                        <div class="lvl">
                            <div class="text">JS <span id="js"></span></div>
                            <div class="bar">
                                <div class="remplir js" title="100%" style="width: 15%;"></div>
                            </div>
                        </div>
                        <div class="lvl">
                            <div class="text">PHP <span id="php"></span></div>
                            <div class="bar">
                                <div class="remplir php" title="100%" style="width: 100%;"></div>
                            </div>
                        </div>
                        <div class="lvl">
                            <div class="text">jQuery <span id="jquery"></span></div>
                            <div class="bar">
                                <div class="remplir jquery" title="100%" style="width: 100%;"></div>
                            </div>
                        </div>
                    </div>
    
                    
                </div>
            </div>
            <!-- Mes services -->
            <div class="mes-services padding" id="services">
                
                <div class="box-content reveal">

                    <?php

                        while ($dataS = $service->fetch()) {

                            ?>

                               <div class="ser <?=$dataS['abreviation']?>s">
                                    <div class="box">
                                        <div class="icon">                            
                                            <?=$dataS['svg']?>
                                        </div>
                                        <div class="texts">
                                            <div class="t1">
                                                <?=$dataS['abreviation']?>
                                            </div>
                                            <div class="t2">
                                                
                                                <!-- Uploaded to: SVG Repo, www.svgrepo.com, Generator: SVG Repo Mixer Tools -->
                                                <svg viewBox="-4.5 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    
                                                    <title>arrow_right [#336]</title>
                                                    <desc>Created with Sketch.</desc>
                                                    <defs>

                                                    </defs>
                                                        <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                            <g id="Dribbble-Light-Preview" transform="translate(-305.000000, -6679.000000)" fill="var(--blanc)">
                                                                <g id="icons" transform="translate(56.000000, 160.000000)">
                                                                    <path d="M249.365851,6538.70769 L249.365851,6538.70769 C249.770764,6539.09744 250.426289,6539.09744 250.830166,6538.70769 L259.393407,6530.44413 C260.202198,6529.66364 260.202198,6528.39747 259.393407,6527.61699 L250.768031,6519.29246 C250.367261,6518.90671 249.720021,6518.90172 249.314072,6519.28247 L249.314072,6519.28247 C248.899839,6519.67121 248.894661,6520.31179 249.302681,6520.70653 L257.196934,6528.32352 C257.601847,6528.71426 257.601847,6529.34685 257.196934,6529.73759 L249.365851,6537.29462 C248.960938,6537.68437 248.960938,6538.31795 249.365851,6538.70769" id="arrow_right-[#336]">

                                                    </path>
                                                            </g>
                                                        </g>
                                                    </g>
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-col">
                                        <h4><?=$dataS['titre']?></h4>
                                        <div>
                                            <?=$dataS['description']?>
                                        </div>
                                        <div style="margin-top: 1cm;display: flex;justify-content: center;">
                                            <div class="tr"></div>
                                            <button class="dv <?=$dataS['abreviation']?>c" onclick="contactus()">
                                                Me contacter
                                            </button>
                                            <div class="tr"></div>
                                        </div>
                                    </div>

                                    <script>
                                        document.querySelector('.<?=$dataS['abreviation']?>s').addEventListener('click', function(){
                                            document.querySelector('.<?=$dataS['abreviation']?>s').classList.toggle('actives');
                                        });

                                        document.querySelector('.<?=$dataS['abreviation']?>c').addEventListener('click', function(){
                                            document.getElementById('subject').value="<?=$dataS['abreviation']?>";
                                        });
                                    </script>
                                </div> 
                            
                            <?php
                        
                        }

                    ?>
                    
                </div>
            </div>
    
            <div class="dashed" id="portfolio">
                <div class="trait"></div>
            </div>
    
            <div class="text-align-center padding reveal" >
                <div class="titre">
                    Mes Projets
                </div>
                <div class="texte" >
                    Découvrez mes réalisations créatives et innovantes qui mettent en valeur mes compétences en conception et développement web. Explorez mon travail et laissez-vous inspirer par mes projets uniques et captivants.
                </div>
            
            </div>
            <!-- Mes Projets-->
            <div class="projets padding" >
                <div class="contain-box reveal">
                    
                    <?php
                     
                        while ($dataP = $projet->fetch()) {
                            
                            ?>

                                <div class="box">
                                    <div style="position: absolute;z-index: 23;transform: translateX(10px) translateY(10px);">
                                        <?php
                                        
                                            if ($dataP['fini'] == 'oui') {
                                                echo '<span class="badge bg-label-success">Terminer</span>';
                                            } else {
                                                echo '<span class="badge bg-label-warning">Non terminner</span>';
                                            }
                                            
                                        ?>
                                        
                                    </div>
                                    <img src="./asset/projet/<?=$dataP['image']?>" alt="">
                                    <div class="taille transform">
                                        <div class="texxt">
                                            <div class="t11">
                                                <?=$dataP['titre']?> 
                                            </div>
                                            <div class="t22">
                                                <?=$dataP['languages']?>
                                            </div>
                                            <div class="t33">
                                                <?=$dataP['description']?>
                                            </div>
                                            <div class="t44">

                                                <?php
                                        
                                                    if ($dataP['fini'] == 'oui') {
                                                        echo '<a class="menu__link" target="_blank" href="'.$dataP['lien'].'">visiter le site</a>';
                                                    }
                                                    
                                                ?>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            <?php

                        }

                    ?>
                    
                </div>
            </div>
    
            <!-- <div class="dashed" style="margin-bottom: 150px;">
                <button class="button">
                    Plus
                </button>
            </div> -->
    
            <div class="dashed" id="termoignage">
                <div class="trait"></div>
            </div>
    
             <div class="text-align-center padding reveal-1">
                <div class="titre" >
                    termoignage
                </div>
                <div class="texte">
                    Découvrez ce que nos clients satisfaits ont à dire sur nos produits et services. Leurs témoignages authentiques reflètent mes engagements envers la satisfaction client et la qualité.
                </div>
            </div>
    

          
            
        </section>

        <section class="sectionpad padding colorpad1" id="temoignage">
            <div class="swiper mySwiper swiper-initialized swiper-horizontal swiper-backface-hidden">
                <div class="swiper-wrapper" id="swiper-wrapper-e22d177866a48573" aria-live="polite" style="transition-duration: 0ms; transform: translate3d(-2054px, 0px, 0px); transition-delay: 0ms;">

                    <?php
                        
                        while ( $dataTn = $temoignage->fetch()) {

                            ?>
                            
                                <div class="bosd swiper-slide">
                                    <div>
                                        <div class="imgxxc">
                                            <embed src="./asset/temoin/<?=$dataTn['image']?>" type="">
                                        </div>
                                    </div>
                                    
                                    <div class="name">
                                    <?=$dataTn['nom']?>
                                    </div>

                                    <div class="meter">
                                    <?=$dataTn['metier']?>
                                    </div>
                                    
                                    <div>
                                        <span>“</span> <?=$dataTn['description']?> <span>”</span>
                                    </div>
                                    
                                </div>
                            
                            <?php

                        }

                    ?>
                    
                  
                </div>
                
                <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal" style="transform: translateY(-12px);"><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 3" aria-current="true"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 4"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 5"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 6"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 7"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 8"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 9"></span></div>
              <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
        </section>
        
        <section class="sectionpad padding" style="padding-bottom: 1cm;padding-top: 1cm;">
            <div class="dashed" id="blog">
                <div class="trait"></div>
            </div>
    
             <div class="text-align-center padding reveal-1">
                <div class="titre" >
                    Blogs
                </div>
                
            </div>
            <div class="blog-list">

            <?php
                        
                while ( $dataB = $blog->fetch()) {

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
                                    <img src="./asset/blog/<?=$dataB['image']?>" style="width: 100%;height: 100%;opacity: 90%;" alt="" srcset="">
                                </div>   
                                <div class="infos">
                                        <span class="title">
                                            <?=$dataB['titre']?>
                                        </span>

                                    <p class="description">
                                        <?=$dataB['introduction']?>
                                    </p>
                                </div>

                                <a class="action" href="./pages/blog.php?ipop=<?=$dataB['id']?>">
                                    Plus
                                </a>
                            </div>
                        </div>
                    
                    <?php

                }
            
            ?>

            </div>
        </section>
        
        <?php
            require './view/footer.php';
        ?>
        <script src="../js/cv.js"></script>
        <script src="../js/theme.js"></script>
        <script src="../js/swiper-bundle.min.js"></script>
        <script src="../js/app.js"></script>
        <script src="../js/scroll.js"></script>
        <script src="../js/jquery.js"></script>
        <script src="../js/form.js"></script>
        <script src="../js/bootstrap.js"></script>
</div>
    
    