<?php

if ($drop != '') {
    
    ?>

        <div class="del" id="del2" >
        <div class="delxx" style="width:8cm;height: 10cm;">
            <div style="display: flex;justify-content: flex-end;padding: var(--space);">
                <button onclick='closexx()' style="border: none;background: var(--noire);cursor: pointer;color: var(--blanc);font-size: 20px;">
                    &times;
                </button>
            </div>
            <div style="height: 100%;padding: var(--space);gap: var(--space);display: flex;flex-direction: column;">
                <form method='post' action="../config-php/update_<?=$drop?>" method="POST" enctype="multipart/form-data" style="width: 100%; flex-direction: column; gap: 10px; display: flex; padding-bottom: 30px;">
                    <div style="width: 100%;display: flex;justify-content: center;">
                        <div class="drop-zone" id="dropZone">
                            Glissez et déposez un fichier ici, ou cliquez pour le sélectionner.
                            <input type="file" name='image' id="fileInput" style="display: none;" />
                            <div class="file-name" id="fileName"></div>
                        </div>
                    </div>
                    <div class="group-input">
                        <div style="margin-top: 10px;">
                            <div class="valider-drop">
                                <button type="submit" class="button-19" style="font-weight: 800;font-size: 13px;color: #fff;" role="button">
                                    <div class="bt-tx">
                                        Modifier
                                    </div>
                                </button>
                            </div>
                        </div>
                    </div>
                    
                </form>
            </div>
        </div>
        </div>
        <script src="../js/drop.js"></script>
        
    <?php
}