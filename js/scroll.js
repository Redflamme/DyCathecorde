window.onscroll = function() {
    scroll()
};

function scroll() {
    if (document.body.scrollTop > 6000 ||
    document.documentElement.scrollTop > 600) {
        document.querySelector(".return-top").style.right = "var(--rposition)";
        document.querySelector(".return-top").style.visibility = "visible";
    }else{
        document.querySelector(".return-top").style.right = "-300px";
    }
}

let alertShown = false;

// Fonction pour détecter si l'élément est visible dans la fenêtre
function onScrollActivate() {
    const targetDiv = document.getElementById('ici1');
    const rect = targetDiv.getBoundingClientRect();

    // Vérifier si la div est entrée dans la zone visible de l'écran
    if (rect.top < window.innerHeight && rect.bottom >= 0 && !alertShown) {

        
       







        




        //html
        let counterhtml = 0;
        let couthtml = 0;
        let html = document.getElementById("html");
        let nhtml = 100;
        setInterval(() => {
            if (counterhtml == nhtml) {
                clearInterval();
            }else{
                counterhtml +=1;
                couthtml +=1;
                html.innerHTML = couthtml + "%";
                let shtml = document.querySelector(".html").style.width=counterhtml + "%";
            }    
        }, 1);


        //css
        let css = document.getElementById("css");
        let ncss = 80;
        let countercss = 0;
        let coutcss = 0;

        setInterval(() => {
            if (countercss == ncss) {
                clearInterval();
            }else{
                countercss +=1;
                coutcss +=1;
                css.innerHTML = coutcss + "%";
                document.querySelector(".css").style.width = countercss + "%";
            }                                    
        }, 1);


        //js
        let js = document.getElementById("js");
        let njs = 39;
        let counterjs = 0;
        let coutjs = 0;

        setInterval(() => {
            if (counterjs == njs) {
                clearInterval();
            }else{
                counterjs +=1;
                coutjs +=1;
                js.innerHTML = coutjs + "%";
                document.querySelector(".js").style.width = counterjs + "%";
            }                                    
        }, 1);


        //PHP
        let php = document.getElementById("php");
        let nphp = 30;
        let counterphp = 0;
        let coutphp = 0;

        setInterval(() => {
            if (counterphp == nphp) {
                clearInterval();
            }else{
                counterphp +=1;
                coutphp +=1;
                php.innerHTML = coutphp + "%";
                document.querySelector(".php").style.width = counterphp + "%";
            }                                    
        }, 1);  

        //jquery
        let jquery = document.getElementById("jquery");
        let njquery = 2;
        let counterjquery = 0;
        let coutjquery = 0;

        setInterval(() => {
            if (counterjquery == njquery) {
                clearInterval();
            }else{
                counterjquery +=1;
                coutjquery +=1;
                jquery.innerHTML = coutjquery + "%";
                document.querySelector(".jquery").style.width = counterjquery + "%";
            }                                    
        }, 1);










        alertShown = true;  // Bloquer l'alerte après l'avoir affichée une fois
        window.removeEventListener('scroll', onScrollActivate);  // Désactiver le scroll listener
    }
}

// Détecter le défilement
window.addEventListener('scroll', onScrollActivate);