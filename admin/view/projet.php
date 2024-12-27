

<div class="nav2">
    <div class="titre">
        Projets
    </div>
    <div style="width: 3cm">
        <?php
            require './view/link.php';
        ?>        
    </div>
</div>
<div class="projets">
    
    <?php
    
        while ($data = $projet->fetch()) {
            
            ?>
            
            <a href="./dashboard.php?page=projet&menu=<?=$data['id'];?>">
                <div class="box">
                    <div class="img">
                        <div class="cover"></div>
                        <img src="../asset/projet/<?=$data['image'];?>" alt="">
                    </div>
                    <div class="titre">
                        <?=$data['titre'];?>
                    </div>
                </div>
            </a>
            
            <?php

        }

    ?>

</div>

<?php
    if ($menu == '') {
        
    } else {
        ?>
            
            <div class="offcanvas offcanvas-end show sdf" style='background:var(--noire);' data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScroll" aria-labelledby="offcanvasScrollLabel" style="visibility: hidden;" aria-hidden="true">
                <div class="offcanvas-header">
                    <h5 id="offcanvasScrollLabel" class="offcanvas-title">Menu</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="bas" style="overflow-y: scroll;height: 100vh;">
                    <div class="img">
                        <div class="cover"></div>
                        <img src="../asset/projet/<?=$dataP['image'];?>" alt="">
                    </div>
                    <div class="titre">
                        <?=$dataP['titre'];?>
                    </div>
                    <div class="ber">
                        <div>
                            <span class="badge rounded-pill" style="background: var(--orange);"><?=$dataP['languages'];?></span>
                        </div>
                        
                        <?php
                        
                            if ($dataP['fini'] == 'oui') {
                                
                                ?>
                                
                                    <div>
                                        <span class="badge rounded-pill" style="background: var(--blanc);color:var(--noire)">Terminer</span>
                                    </div>
                                
                                <?php

                            }

                        ?>

                    </div>
                    <div class="descrip">
                        <span>
                            <?=$dataP['description'];?>
                        </span>
                    </div>
                    <div class="link">
                        <?php
                            
                            if ($dataP['fini'] == 'oui') {
                                
                                ?>
                                
                                    <a href="<?=$dataP['lien']?>">"<?=$dataP['lien']?>"</a>
                                
                                <?php

                            }

                        ?>
                    </div>

                    <div class="ber">
                        <a href="./dashboard.php?page=<?=$page;?>&delete=<?=$dataP['id'];?>">
                            <button type="button" id="login" class="button-19" style="font-weight: 800;font-size: 13px;color: #fff;" role="button">
                                supprimer
                            </button>
                        </a>
                    </div>
                </div>
            </div>


        <?php
    }
    
?>

<style>
    .dash .sidebar .mains .act2 .btn-menu{background-color: var(--orange3);transition: var(--tion);color: var(--orange);}
    .dash .sidebar .mains .act2 .btn-menu .svg{stroke: var(--orange);}
    .dash .sidebar .mains .act2 .btn-menu .svgs{fill: var(--orange);}
</style>

<?php
    require './view/delete.php';
?>