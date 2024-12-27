<form id="projet" style="width: 100%;height: 100%;display: flex;flex-direction: column;gap: var(--space);">
    <div class="nav2">
        <div class="titre">
            Nouveau Blog
        </div>
        <div style="width: 3cm">
            <?php
                require './view/submit.php';
            ?>
        </div>
    </div>
    <div class="graph">
        <div class="gax">
            <div class="titre">
                Formulaires
            </div>
            <div class="group-input">
                <div>
                    <div class="kal">
                        Titre du blog
                    </div>
                    <div class="in titrex">
                        <div class="indication">
                            <div class="no choix" title="Veuillez remplir ce champ.">
                                <i class="fa fa-exclamation" aria-hidden="true"></i>
                            </div>
                        </div>
                        <input type="text" name="titre" placeholder="Titre du Blog" autocomplete="off" id="titrex" class="put anime">
                    </div>
                </div>
                <div>
                    <div class="kal">
                        Introduction
                    </div>
                    <div class="in description">
                        <div class="indication">
                            <div class="no choix" title="Veuillez remplir ce champ.">
                                <i class="fa fa-exclamation" aria-hidden="true"></i>
                            </div>
                        </div>
                        <textarea name="description" id="description" placeholder="Introduction du blog" class="area"></textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="notx">
            <div class="group-input">
                <div class="titre">
                    Images
                </div>
                <div class="imgs">
                    <div class="cov">
                        <button type="button" class="icon-btn add-btn" onclick="document.getElementById('put').click()">
                            <div class="add-icon"></div>
                            <div class="btn-txt">Add image</div>
                        </button>
                        <input type="file" name="image" id="put" style="display: none;">
                    </div>
                    <style>
                        /* From Uiverse.io by mrhyddenn */ 
                        .icon-btn {
                        width: 50px;
                        height: 50px;
                        border: 1px solid #cdcdcd;
                        background: white;
                        border-radius: 25px;
                        overflow: hidden;
                        position: relative;
                        transition: width 0.2s ease-in-out;
                        font-weight: 500;
                        font-family: inherit;
                        }

                        .add-btn:hover {
                        width: 120px;
                        }

                        .add-btn::before,
                        .add-btn::after {
                        transition: width 0.2s ease-in-out, border-radius 0.2s ease-in-out;
                        content: "";
                        position: absolute;
                        height: 4px;
                        width: 10px;
                        top: calc(50% - 2px);
                        background: var(--orange);
                        }

                        .add-btn::after {
                        right: 14px;
                        overflow: hidden;
                        border-top-right-radius: 2px;
                        border-bottom-right-radius: 2px;
                        }

                        .add-btn::before {
                        left: 14px;
                        border-top-left-radius: 2px;
                        border-bottom-left-radius: 2px;
                        }

                        .icon-btn:focus {
                        outline: none;
                        }

                        .btn-txt {
                        opacity: 0;
                        transition: opacity 0.2s;
                        }

                        .add-btn:hover::before,
                        .add-btn:hover::after {
                        width: 4px;
                        border-radius: 2px;
                        }

                        .add-btn:hover .btn-txt {
                        opacity: 1;
                        }

                        .add-icon::after,
                        .add-icon::before {
                        transition: all 0.2s ease-in-out;
                        content: "";
                        position: absolute;
                        height: 20px;
                        width: 2px;
                        top: calc(50% - 10px);
                        background: var(--orange);
                        overflow: hidden;
                        }

                        .add-icon::before {
                        left: 22px;
                        border-top-left-radius: 2px;
                        border-bottom-left-radius: 2px;
                        }

                        .add-icon::after {
                        right: 22px;
                        border-top-right-radius: 2px;
                        border-bottom-right-radius: 2px;
                        }

                        .add-btn:hover .add-icon::before {
                        left: 15px;
                        height: 4px;
                        top: calc(50% - 2px);
                        }

                        .add-btn:hover .add-icon::after {
                        right: 15px;
                        height: 4px;
                        top: calc(50% - 2px);
                        }
                    </style>
                    <img src="#" alt="" id="img" srcset="">
                </div>
                
            </div>
        </div>
    </div>
    <div class="view">
        <div>
            <div class="kal">
                Développement
            </div>
            <div class="in html">
                <div class="indication">
                    <div class="no choix" title="Veuillez remplir ce champ.">
                        <i class="fa fa-exclamation" aria-hidden="true"></i>
                    </div>
                </div>
                <textarea name="html" id="html" placeholder="Entrer du code html" class="area"></textarea>
            </div>
        </div>
    </div>
</form>
<style>
    .dash .sidebar .mains .act5 .btn-menu{background-color: var(--orange3);transition: var(--tion);color: var(--orange);}
    .dash .sidebar .mains .act5 .btn-menu .svg{stroke: var(--orange);}
    .dash .sidebar .mains .act5 .btn-menu .svgs{fill: var(--orange);}
</style>
<script src="../js/inB.js"></script>