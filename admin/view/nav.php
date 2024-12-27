<nav>
    <div class="bars ops">
        <i class="fa fa-bars" aria-hidden="true"></i>
    </div>
    <a href="./dashboard.php?page=profil" style="text-decoration: none;color: var(--blanc);">
        <div class="prof">
            <div class="img" style='background:var(--footer)'>
                <img src="../asset/admin/<?=$dataA['image']?>" alt="">
            </div>
            <div class="ds">
                <div style="color: var(--blanc);">
                    <?=$dataA['nom']?>
                </div>
                <div style="color: var(--blanc);opacity: 50%;font-size: 12px;">
                    <?=$dataA['email']?>
                </div>
            </div>
        </div>
    </a>
</nav>