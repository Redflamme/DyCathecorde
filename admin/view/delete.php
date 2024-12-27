<?php

if ($delete != '') {
    ?>
    
        <!-- DELETE -->
        <div class="del">
            <div class="delx">
                <div class="mesg">
                    Voulez_vous supprimer cet élément?
                </div>
                <div class="ild">
                        <a href="../config-php/delete_<?php echo $page . '.php?id=' . $delete;?>">
                            <div class="elsc">
                                oui
                            </div>
                        </a>
                        <a href="#" onclick="ferme()">
                            <div class="elsc">
                                non
                            </div>
                        </a>
                </div>
            </div>
        </div>
    
    <?php
}