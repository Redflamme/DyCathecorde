<div class="nav2">
    <div class="titre">
        Blogs
    </div>
    <div style="width: 3cm">
        <?php
            require './view/link.php';
        ?>
    </div>
</div>

<div class="projets">

    <?php
    
        while ($data = $blog->fetch()) {
            
            ?>

                <a href="./dashboard.php?page=blog&menu=<?=$data['id'];?>">
                    <div class="box">
                        <div class="img">
                            <div class="cover"></div>
                            <img src="../asset/blog/<?=$data['image'];?>" alt="">
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
                <div class="bas cs">
                    <div class="img">
                        <div class="cover"></div>
                        <img src="../asset/blog/<?=$dataB['image'];?>" alt="">
                    </div>
                    <div class="titre">
                        <?=$dataB['titre'];?>
                    </div>
                    
                    <div class="descrip">
                        <?=truncateToWords($dataB['introduction'], 20)?>
                    </div>
                    <div class="link">
                        <a href="../pages/blog.php?titre=<?=$dataB['titre']?>"><?php echo 'www.dyc.com/pages/blog.php?titre='. $dataB['titre'];?></a>
                    </div>
                    <div class="ber">
                        <a href="./dashboard.php?page=<?=$page;?>&delete=<?=$dataB['id'];?>">
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
    .dash .sidebar .mains .act5 .btn-menu{background-color: var(--orange3);transition: var(--tion);color: var(--orange);}
    .dash .sidebar .mains .act5 .btn-menu .svg{stroke: var(--orange);}
    .dash .sidebar .mains .act5 .btn-menu .svgs{fill: var(--orange);}
</style>

<?php
    require './view/delete.php';
?>