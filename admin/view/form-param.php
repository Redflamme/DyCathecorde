<form id="formparam">
    <div class="group-input" style="flex-direction: row;margin-bottom: 10px;">
            <div class="in domaine">
                <div class="indication">
                    <div class="no choix" title="Veuillez remplir ce champ.">
                        <i class="fa fa-exclamation" aria-hidden="true"></i>
                    </div>
                </div>
                <input type="text" name="domaine" value="<?=$dataSi['domaine']?>" placeholder="Email admin" autocomplete="off" id="domaine" class="put anime">
            </div>
            <div class="in auteur">
                <div class="indication">
                    <div class="no choix" title="Veuillez remplir ce champ.">
                        <i class="fa fa-exclamation" aria-hidden="true"></i>
                    </div>
                </div>
                <input type="text" name="auteur" value="<?=$dataSi['auteur']?>" placeholder="Email admin" autocomplete="off" id="auteur" class="put anime">
            </div>
    </div>
    <div class="group-input" style="flex-direction: row;margin-bottom: 10px;">
        <div class="in tel">
            <div class="indication">
                <div class="no choix" title="Veuillez remplir ce champ.">
                    <i class="fa fa-exclamation" aria-hidden="true"></i>
                </div>
            </div>
            <input type="text" name="tel" value="<?=$dataSi['tel']?>" placeholder="Email admin" autocomplete="off" id="tel" class="put anime">
        </div>
        <div class="in emails">
            <div class="indication">
                <div class="no choix" title="Veuillez remplir ce champ.">
                    <i class="fa fa-exclamation" aria-hidden="true"></i>
                </div>
            </div>
            <input type="text" name="emails" value="<?=$dataSi['emails']?>" placeholder="Email admin" autocomplete="off" id="emails" class="put anime">
        </div>
    </div>
    <div class="group-input" style="flex-direction: row;margin-bottom: 10px;">
        <div class="in adresse">
            <div class="indication">
                <div class="no choix" title="Veuillez remplir ce champ.">
                    <i class="fa fa-exclamation" aria-hidden="true"></i>
                </div>
            </div>
            <input type="text" name="adresse" value="<?=$dataSi['adresse']?>" placeholder="Email admin" autocomplete="off" id="adresse" class="put anime">
        </div>
        <div class="in slug">
            <div class="indication">
                <div class="no choix" title="Veuillez remplir ce champ.">
                    <i class="fa fa-exclamation" aria-hidden="true"></i>
                </div>
            </div>
            <input type="text" name="slug" value="<?=$dataSi['slug']?>" placeholder="Email admin" autocomplete="off" id="slug" class="put anime">
        </div>
    </div>
    
    
    <div class="group-input" style="width: 100px;margin-top: 10px;">
        <div class="valider-param">
            <button type="button" id="param" class="button-19" style="font-weight: 800;font-size: 13px;color: #fff;" role="button">
                <div class="bt-tx">
                    Modifier
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
</form>