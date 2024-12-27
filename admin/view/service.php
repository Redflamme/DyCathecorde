<div class="nav2">
    <div class="titre">
        Services
    </div>
    <div style="width: 3cm">
        <?php
            require './view/link.php';
        ?>
    </div>
</div>

<div class="projets">

    <?php
    
        while ($data = $service->fetch()) {
            
            ?>

                <a href="./dashboard.php?page=service&menu=<?=$data['id'];?>">
                    <div class="box">
                        <div class="img">
                            <div class="cover"></div>
                            <div class="let-svg" style="background: var(--orange);">
                                <?=$data['svg'];?>
                            </div>
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
            <div class="offcanvas offcanvas-end show" style='background:var(--noire);' data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScroll" aria-labelledby="offcanvasScrollLabel" style="visibility: hidden;" aria-hidden="true">
                <div class="offcanvas-header">
                    <h5 id="offcanvasScrollLabel" class="offcanvas-title">Menu</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="bas">
                    <div class="img">
                        <div class="cover"></div>
                        <div class="let-svg" style="background: var(--orange);">
                            <?=$dataS['svg'];?>
                        </div>
                    </div>
                    <div class="titre">
                        <?=$dataS['titre'];?>
                    </div>
                    
                    <div class="descrip">
                        <?=$dataS['description'];?>
                    </div>
                    <div class="ber">
                        <a href="./dashboard.php?page=<?=$page;?>&delete=<?=$dataS['id'];?>">
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
    .dash .sidebar .mains .act4 .btn-menu{background-color: var(--orange3);transition: var(--tion);color: var(--orange);}
    .dash .sidebar .mains .act4 .btn-menu .svg{stroke: var(--orange);}
    .dash .sidebar .mains .act4 .btn-menu .svgs{fill: var(--orange);}
</style>

<?php
    require './view/delete.php';
?>