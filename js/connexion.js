$('#erasemail').click(function(){
  document.querySelector(".mailti").value="";
});

$('#login').click(function(){
    var email = $('.mailti').val();
    var pwd = $('.pwdi').val();
    var textvide = "Veuillez remplir ce champ";
    var erroemail = "L'adresse e-mail n'est pas valide";
    var erropwd = "Erreur mot de passe reéssayez.";
    
    let valider = document.querySelector(".valider");

    valider.classList.add('active1');
  
    if ($.trim(email) == '' && $.trim(pwd) == '') {
      document.querySelector(".pwd1").classList.add("is-invalid");
      document.querySelector(".email1").classList.add("is-invalid");
      document.querySelector(".av1").textContent=textvide;
      document.querySelector(".av2").textContent=textvide;
        valider.classList.remove('active1');

    } else if ($.trim(email) == '') {
      document.querySelector(".pwd1").classList.remove("is-invalid");
      document.querySelector(".email1").classList.add("is-invalid");
      document.querySelector(".av1").textContent=textvide;
        valider.classList.remove('active1');

    } else if ($.trim(pwd) == '') {
      document.querySelector(".pwd1").classList.add("is-invalid");
      document.querySelector(".email1").classList.remove("is-invalid");
      document.querySelector(".av2").textContent=textvide;
        valider.classList.remove('active1');
    } else {
    
      $.ajax({
          url: '../config-php/connexion.php',
          type: 'POST',
          data: $('#form1').serialize(),
          success: function(response) {
              if (response.includes('email_incorrect')) {
                  document.querySelector(".email1").classList.add("is-invalid");
                  document.querySelector(".av1").textContent=erroemail;
                    valider.classList.remove('active1');
             }else if (response.includes('mot_de_passe_incorrect')) {
                  document.querySelector(".pwd1").classList.add("is-invalid");
                  document.querySelector(".email1").classList.remove("is-invalid");
                  document.querySelector(".av2").textContent=erropwd;
                    valider.classList.remove('active1');
                }else if (response.includes('adm success')) {
                    valider.classList.remove('active1');
                    valider.classList.add('check');

                  window.location.href = '../admin/dashboard.php?page=dashboard';
              }else if (response.includes('success')) {
                valider.classList.remove('active1');
                valider.classList.add('check');

              window.location.href = '../admin/dashboard.php?page=dashboard';
              }
          }
      });
    }
  });
  