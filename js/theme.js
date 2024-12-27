var body = document.querySelector(".body");
var btn_theme = document.querySelector(".toggles");
let nameStorage = localStorage.getItem('dycathecode_theme');

var ddrt = document.querySelector(".ddrt");


var date = new Date();
var heure = date.getHours();
var minutes = date.getMinutes();
var heure_actuel = heure;
let heure_finale = 18;
let heure_debut = 5;

if (heure_finale <= heure_actuel || heure_debut >= heure_actuel) {
    nameStorage = "0";        
} else {
    nameStorage = "1";
}


if (nameStorage == "1") {



    // btn_theme.classList.remove("toggles-mov");
    body.classList.remove("dark-body");
    ddrt.classList.remove('istar');

    function theme_change() {
        if (nameStorage == "1") {
            nameStorage = "0";        
            
            ddrt.classList.add('istar');
            
        } else {
            nameStorage = "1";        

            ddrt.classList.remove('istar');
        }

        // btn_theme.classList.toggle("toggles-mov");
        body.classList.toggle("dark-body");

    }

} else {
    //var btn_theme = document.querySelector(".toggles");

    // btn_theme.classList.add("toggles-mov");
    body.classList.add("dark-body");
    ddrt.classList.add('istar');

    function theme_change() {
        if (nameStorage == "0") {
            nameStorage = "1";        

            ddrt.classList.remove('istar');

            
        } else {

            nameStorage = "0";        
            ddrt.classList.add('istar');

        }

        body.classList.toggle("dark-body");
    }
}
    
