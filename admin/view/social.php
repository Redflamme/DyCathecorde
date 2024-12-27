<?php

if ($social != '') {
    
    ?>

        <div class="del" id="del1">
            <div class="delxx" style="width:8cm;height: 12cm;">
                <div style="display: flex;justify-content: flex-end;padding: var(--space);">
                    <button onclick="closex()" style="border: none;background: var(--noire);cursor: pointer;color: var(--blanc);font-size: 20px;">
                        &times;
                    </button>
                </div>
                <div style="height: 100%;padding: var(--space);gap: var(--space);display: flex;flex-direction: column;">
                    <div style="width: 100%;display: flex;justify-content: center;">
                        <div id="svg-contain" style="content: ' '; width: 2cm;height: 2cm;background: var(--footer);border-radius: 1rem;display: flex;justify-content: center;align-items: center;font-size: 15px;font-weight: 700;color:black;padding:14px">
                            SVG
                        </div>
                    </div>
                    <form id="social-form" style="width: 100%;flex-direction: column;gap:10px;display: flex;padding-bottom: 30px;">
                        <div class="group-input">
                            <div>
                                <div class="kal">
                                    Lien Url
                                </div>
                                <div class="in url">
                                    <div class="indication">
                                        <div class="no choix" title="Veuillez remplir ce champ.">
                                            <i class="fa fa-exclamation" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <input type="url" name="url" placeholder="lien Url" autocomplete="off" id="url" class="put anime">
                                </div>
                            </div>
                            <div>
                                <div class="kal">
                                    Code Svg
                                </div>
                                <div class="in svg">
                                    <div class="indication">
                                        <div class="no choix" title="Veuillez remplir ce champ.">
                                            <i class="fa fa-exclamation" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <textarea name="svg" id="svg" placeholder="Description du Projet" class="area"></textarea>
                                </div>
                            </div>
                            <div style="margin-top: 10px;">
                                <div class="valider-social ">
                                    <button type="button" id="<?=$social?>" class="button-19" style="font-weight: 800;font-size: 13px;color: #fff;" role="button">
                                        <div class="bt-tx">
                                            Ajouter
                                        </div>
                                        <div class="bt-check">
                                            <i class="fa fa-check" aria-hidden="true"></i>
                                        </div>
                                        <div style="transform: translateY(23px);justify-content: center;"class="bt-ico" >
                                            <div class="containers">
                                                <div class="cube"><div class="cube__inner"></div></div>
                                                <div class="cube"><div class="cube__inner"></div></div>
                                                <div class="cube"><div class="cube__inner"></div></div>
                                                </div>
                                                
                                                <style>
                                                .containers {
                                                    --uib-size: 35px;
                                                    --uib-color: rgb(255, 255, 255);
                                                    --uib-speed: 1.75s;
                                                    display: flex;
                                                    align-items: flex-end;
                                                    padding-bottom: 20%;
                                                    justify-content: space-between;
                                                    width: var(--uib-size);
                                                    height: calc(var(--uib-size) * 0.6);
                                                }
                                                
                                                .cube {
                                                    flex-shrink: 0;
                                                    width: calc(var(--uib-size) * 0.2);
                                                    height: calc(var(--uib-size) * 0.2);
                                                    animation: jump var(--uib-speed) ease-in-out infinite;
                                                }
                                                
                                                .cube__inner {
                                                    display: blogk;
                                                    height: 100%;
                                                    width: 100%;
                                                    border-radius: 25%;
                                                    background-color: var(--uib-color);
                                                    transform-origin: center bottom;
                                                    animation: morph var(--uib-speed) ease-in-out infinite;
                                                    transition: background-color 0.3s ease;
                                                }
                                                
                                                .cube:nth-child(2) {
                                                    animation-delay: calc(var(--uib-speed) * -0.36);
                                                
                                                    .cube__inner {
                                                    animation-delay: calc(var(--uib-speed) * -0.36);
                                                    }
                                                }
                                                .cube:nth-child(3) {
                                                    animation-delay: calc(var(--uib-speed) * -0.2);
                                                
                                                    .cube__inner {
                                                    animation-delay: calc(var(--uib-speed) * -0.2);
                                                    }
                                                }
                                                
                                                @keyframes jump {
                                                    0% {
                                                    transform: translateY(0px);
                                                    }
                                                
                                                    30% {
                                                    transform: translateY(0px);
                                                    animation-timing-function: ease-out;
                                                    }
                                                
                                                    50% {
                                                    transform: translateY(-200%);
                                                    animation-timing-function: ease-in;
                                                    }
                                                
                                                    75% {
                                                    transform: translateY(0px);
                                                    animation-timing-function: ease-in;
                                                    }
                                                }
                                                
                                                @keyframes morph {
                                                    0% {
                                                    transform: scaleY(1);
                                                    }
                                                
                                                    10% {
                                                    transform: scaleY(1);
                                                    }
                                                
                                                    20%,
                                                    25% {
                                                    transform: scaleY(0.6) scaleX(1.3);
                                                    animation-timing-function: ease-in-out;
                                                    }
                                                
                                                    30% {
                                                    transform: scaleY(1.15) scaleX(0.9);
                                                    animation-timing-function: ease-in-out;
                                                    }
                                                
                                                    40% {
                                                    transform: scaleY(1);
                                                    }
                                                
                                                    70%,
                                                    85%,
                                                    100% {
                                                    transform: scaleY(1);
                                                    }
                                                
                                                    75% {
                                                    transform: scaleY(0.8) scaleX(1.2);
                                                    }
                                                }
                                                </style>
                                                
                                                
                                        </div>
                                    </button>
                                </div>
                            </div>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>

        <script>
            // Récupération des éléments nécessaires
            const svgTextarea = document.getElementById("svg");
            const svgContain = document.getElementById("svg-contain");
            
            // Écouteur d'événement pour détecter les changements dans la zone de texte
            svgTextarea.addEventListener("input", () => {
                const svgCode = svgTextarea.value.trim(); // Récupération du code SVG
                if (svgCode) {
                try {
                    // Nettoyage de la zone SVG avant d'ajouter le nouveau contenu
                    svgContain.innerHTML = svgCode;
                } catch (error) {
                    // Gestion des erreurs si le code SVG est incorrect
                    svgContain.innerHTML = "SVG invalide";
                }
                } else {
                // Remet un contenu par défaut si la zone de texte est vide
                svgContain.innerHTML = "SVG";
                }
            });
        </script>
 
 <?php
}