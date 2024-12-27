<form id="projet" style="width: 100%;height: 100%;display: flex;flex-direction: column;gap: var(--space);">
    <div class="nav2">
        <div class="titre">
            Nouveau Projet
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
                        Titre du Projet
                    </div>
                    <div class="in titrex">
                        <div class="indication">
                            <div class="no choix" title="Veuillez remplir ce champ.">
                                <i class="fa fa-exclamation" aria-hidden="true"></i>
                            </div>
                        </div>
                        <input type="text" name="titre" placeholder="Titre du projet" autocomplete="off" id="titre" class="put anime">
                    </div>
                </div>
                <div>
                    <div class="kal">
                        Description du Projet
                    </div>
                    <div class="in description">
                        <div class="indication">
                            <div class="no choix" title="Veuillez remplir ce champ.">
                                <i class="fa fa-exclamation" aria-hidden="true"></i>
                            </div>
                        </div>
                        <textarea name="description" id="description" placeholder="Description du Projet" class="area"></textarea>
                    </div>
                </div>
                <div>
                    <div class="kal" style="margin-top: 23px;">
                        Avez-vous termier se projet?
                    </div>
                    <div class="radio-input" style="margin-top: 10px;">
                        <div class="radio-b">
                            <input type="radio" class="radio-b__input" id="radio1" onclick="oui()" name="terminer" value="oui"/>
                            <label class="radio-b__label" for="radio1">
                            <div class="radio-b__custom">
                                <span class="radio-b__custom-fill"></span>
                            </div>
                            <span class="radio-b__text">Oui</span>
                            </label>
                        </div>
                        <div class="radio-b">
                            <input type="radio" class="radio-b__input" id="radio2" onclick="non()" name="terminer" value="Non" />
                            <label class="radio-b__label" for="radio2">
                            <div class="radio-b__custom">
                                <span class="radio-b__custom-fill"></span>
                            </div>
                            <span class="radio-b__text">Non</span>
                            </label>
                        </div>
                        
                        <style>
                            /* From Uiverse.io by Lu2ovic */ 
                            .radio-input {
                            display: flex;
                            gap: 16px; /* Espace entre les lignes */
                            }

                            .radio-b {
                            display: flex;
                            align-items: center;
                            cursor: pointer;
                            }

                            .radio-b__input {
                            position: absolute;
                            opacity: 0;
                            width: 0;
                            height: 0;
                            }

                            .radio-b__label {
                            display: flex;
                            align-items: center;
                            gap: 12px; /* Espace entre le carré et le texte */
                            font-size: 15px;
                            color: var(--blanc);
                            font-weight: 600;
                            transition: all 0.3s ease;
                            }

                            .radio-b__custom {
                            position: relative;
                            width: 26px;
                            height: 26px;
                            border: 2px solid var(--blanc);
                            border-radius: 0%;
                            transition: all 0.3s ease;
                            overflow: hidden;
                            }

                            .radio-b__custom-fill {
                            position: absolute;
                            top: 50%;
                            left: 50%;
                            width: 0;
                            height: 0;
                            border: 2px solid var(--blanc);
                            border-radius: 10px;
                            background: var(--orange);
                            transform: translate(-50%, -50%);
                            transition: all 0.3s ease;
                            }

                            .radio-b__input:checked + .radio-b__label .radio-b__custom-fill {
                            width: 26px;
                            height: 26px;
                            transition: all 0.3s ease;
                            }

                            .radio-b__input:checked + .radio-b__label .radio-b__custom {
                            border: none; /* Supprime les bordures noires */
                            transition: all 0.3s ease; /* Assure une transition fluide */
                            }

                            .radio-b__input:hover + .radio-b__label .radio-b__custom {
                            transform: scale(0.85);
                            color: linear-gradient(
                                0deg,
                                rgba(0, 230, 118, 1) 0%,
                                rgba(255, 215, 0, 1) 100%
                            );
                            }

                            /* Optionnel : style pour le texte */
                            .radio-b__text {
                            font-size: 15px;
                            color: var(--blanc);
                            font-weight: 600;
                            }

                        </style>
                    </div>
                </div>
                <div id="derb">
                    <div class="kal">
                        Lien du Projet terminer
                    </div>
                    <div class="in lien">
                        <div class="indication">
                            <div class="no choix" title="Veuillez remplir ce champ.">
                                <i class="fa fa-exclamation" aria-hidden="true"></i>
                            </div>
                        </div>
                        <input type="url" name="lien" placeholder="Lien du projet" autocomplete="off" id="lien" class="put anime">
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
                <div>
                    <div class="kal">
                        Langages utilisés
                    </div>
                    <div class="in lang">
                        <div class="indication">
                            <div class="no choix" title="Veuillez remplir ce champ.">
                                <i class="fa fa-exclamation" aria-hidden="true"></i>
                            </div>
                        </div>
                        <input type="text" name="lang" placeholder="Langage du projet" autocomplete="off" id="lang" style="text-transform: uppercase;" class="put anime">
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<style>
    .dash .sidebar .mains .act2 .btn-menu{background-color: var(--orange3);transition: var(--tion);color: var(--orange);}
    .dash .sidebar .mains .act2 .btn-menu .svg{stroke: var(--orange);}
    .dash .sidebar .mains .act2 .btn-menu .svgs{fill: var(--orange);}
</style>
<script src="../js/inP.js"></script>