<?php

if ($menu != '') {
    ?>
    
        <div class="del">
            <div class="delxx">
                <div class="hd">
                    <div class="hdimg" style="background: <?=colorletter(letter($dataM['nom']))?>;color: #fff;font-weight: 500;">
                        <?=letter($dataM['nom'])?>
                    </div>
                    <div class="profs">
                        <?=$dataM['nom']?>
                    </div>
                </div>
                
                <div class="msg">
                    <div class="cont">
                        <p>
                            Email: <a href="mailto:<?=$dataM['email']?>"><?=$dataM['email']?></a>
                        </p>
                        <p>
                            Tel: <a href="tel:+237<?=$dataM['tel']?>"><?=$dataM['tel']?></a>
                        </p> 
                    </div>
                    <div class="cont">
                        Pour : <?=$dataM['sujet']?>
                    </div>
                    <div class="cont">
                    <?=$dataM['message']?>
                    </div>
                </div>
                <div class="close" onclick="closes()">
                    fermer
                </div>
            </div>
        </div>
    
    <?php
}