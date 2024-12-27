let nom = document.getElementById("nom");
let tel = document.getElementById("tel");
let email = document.getElementById("email");
let subject = document.getElementById("subject");
let message = document.getElementById("message");

let noms = document.querySelector(".nom");
let tels = document.querySelector(".tel");
let emails = document.querySelector(".email");
let subjects = document.querySelector(".subject");
let messages = document.querySelector(".message");


function checkEmailWithDomain(email) {
    var re = /^[a-zA-Z0-9._%+-]+@(gmail|outlook|yahoo)\.[a-zA-Z]{2,}$/;
    return re.test(email);
}

nom.addEventListener("input", function() {
    noms.classList.remove('is-invalid');
});

email.addEventListener("input", function() {
    emails.classList.remove('is-invalid');
});

subject.addEventListener("input", function() {
    subjects.classList.remove('is-invalid');
});

message.addEventListener("input", function() {
    messages.classList.remove('is-invalid');
});

tel.addEventListener("input", function() {
    var input = this.value;
    if (input.length > 9) {
      this.value = input.slice(0, 9); // Limite la saisie à 9 caractères
    } else {
      this.value = input.replace(/\D/g, ''); // Remplace tout caractère qui n'est pas un chiffre par une chaîne vide
    }
    tels.classList.remove('is-invalid');

});

// VALIDATION JQUERY

$('#submit').click(function(){
    let nom = document.getElementById("nom").value;
    let tel = document.getElementById("tel").value;
    let email = document.getElementById("email").value;
    let subject = document.getElementById("subject").value;
    let message = document.getElementById("message").value;
    let submit = document.getElementById("submit");

    let noms = document.querySelector(".nom");
    let tels = document.querySelector(".tel");
    let emails = document.querySelector(".email");
    let subjects = document.querySelector(".subject");
    let messages = document.querySelector(".message");
    
    submit.classList.toggle('activess');

    if (nom == '') {
        noms.classList.add("is-invalid");
        submit.classList.remove('activess');
    }
    
    if(email == ''){
        emails.classList.add("is-invalid");
        submit.classList.remove('activess');
    }

    if(tel == ''){
        tels.classList.add("is-invalid");
        submit.classList.remove('activess');
    }
    
    if(subject == ''){
        subjects.classList.add("is-invalid");
        submit.classList.remove('activess');
    }
    
    if(message == ''){
        messages.classList.add("is-invalid");
        submit.classList.remove('activess');
    }
  
    if (nom == '') {
      noms.classList.add("is-invalid");
      submit.classList.remove('activess');
    } else if(email == ''){
        emails.classList.add("is-invalid");
        submit.classList.remove('activess');
    } else if(tel == ''){
        tels.classList.add("is-invalid");
        submit.classList.remove('activess');
    } else if(subject == ''){
        subjects.classList.add("is-invalid");
        submit.classList.remove('activess');
    } else if(message == ''){
        messages.classList.add("is-invalid");
        submit.classList.remove('activess');
    } else{
        $.ajax({
            url: './php_mail/index.php',
            type: 'POST',
            data: $('#formsend').serialize(),
            success: function(response) {
                if (response.includes('oui')) {
                    document.querySelector('.notification').classList.add('notification-mov');
                    submit.classList.remove('activess');

                    document.getElementById("nom").value = "";
                    document.getElementById("tel").value = "";
                    document.getElementById("email").value= "";
                    document.getElementById("subject").value= "";
                    document.getElementById("message").value= "";

                    setTimeout(() => {
                        document.querySelector('.notification').classList.remove('notification-mov');
                    }, 4000);

                }else if (response.includes('non')) {
                    document.querySelector('.notificationx').classList.add('notification-movx');
                    submit.classList.remove('activess');

                    setTimeout(() => {
                        document.querySelector('.notificationx').classList.remove('notification-movx');
                    }, 4000);

                }else if (response.includes('')) {
                    document.querySelector('.notificationx').classList.add('notification-movx');
                    submit.classList.remove('activess');

                    setTimeout(() => {
                        document.querySelector('.notificationx').classList.remove('notification-movx');
                    }, 4000);
                }
                
            }
        });

        

    } 
    
    
  });
  
  

