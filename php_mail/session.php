<?php session_start();    
  //$_SESSION["val_dycathecorde"] = "oui";
  //  echo $_SESSION["val_dycathecorde"];
    $vad = $_SESSION["val_dycathecorde"];
    $dd = "oui";
    
            if ($vad == $dd) {
                ?>
                        <div class="envoyer" >
        <div class="bs-toast toast fade show bg-success mood" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
            <i class="bx bx-bell me-2"></i>
            <div class="me-auto fw-semibold">Notification</div>
            <small>aujourd'hui</small>
            <button type="button" class="btn-close" onclick="novvv()" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
            Le message a été envoyer avec succes.
            </div>
            <div class="bar_tim" id="positif">
                
            </div>
        </div>
    </div>

        
                  
                <?php
            }else {
                ?>
                    <div class="bs-toast toast fade show bg-danger mood" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-header">
          <i class="bx bx-bell me-2"></i>
          <div class="me-auto fw-semibold">Notification</div>
          <small>aujourd'hui</small>
          <button type="button" class="btn-close" onclick="novvv()" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">
            Vérifier votre connection internet et reéssayer.
        </div>
        <div class="bar_tim" id="negatif">
            
        </div>              
    </div><?php
            }    
            ?>
            <div id="ss">

            </div>
        <script>
            let oui = "oui";
            let dec = <?php echo $_SESSION["val_dycathecorde"]; ?>;
            let ss = Document.getElementById("ss");
            if ( dec == oui) {
                ss.innerHTML="oui";
            } else {
                ss.innerHTML="non";
            }

            function novvv() {
                notification.classList.toggle("notification-mov");
            }

            let positif = document.getElementById("positif");
            let negatif = document.getElementById("negatif");
            
        </script>

                       

</body>
</html>



