//alert(heure_actuel);


const loader = document.querySelector(".loader");

window.addEventListener('load', () => {

    loader.classList.add('fondu-out');
    body.classList.remove('noscroll');

});


let menu = document.querySelector(".right");
let bar = document.querySelector(".bar-verticale");


function btn_menu() {
    body.classList.add("no-scroll");
}

function active_items() {
    body.classList.toggle("no-scroll");
}


//MENU SCROOL MOUVEMENT
function about() {
    var about = document.getElementById('about');
    about.scrollIntoView({ behavior: 'smooth' });
  }

  function services() {
    var services = document.getElementById('services');
    services.scrollIntoView({ behavior: 'smooth' });
  }

  function portfolio() {
    var portfolio = document.getElementById('portfolio');
    portfolio.scrollIntoView({ behavior: 'smooth' });
  }

  function termoignage() {
    var termoignage = document.getElementById('termoignage');
    termoignage.scrollIntoView({ behavior: 'smooth' });
  }

  function contactus() {
    var contactus = document.getElementById('contactus');
    contactus.scrollIntoView({ behavior: 'smooth' });
  }

  function blog() {
    var blog = document.getElementById('blog');
    blog.scrollIntoView({ behavior: 'smooth' });
  }

  function return_top() {
    var top = document.getElementById('top');
    top.scrollIntoView({ behavior: 'smooth' });
  }

//   document.addEventListener('contextmenu', function (e) {
//     e.preventDefault();
//     alert('Clic droit désactivé sur cette page.');
// });

// document.addEventListener('keydown', function (e) {
//     if ((e.ctrlKey || e.metaKey) && e.key.toLowerCase() === 's') {
//         e.preventDefault();
//         alert('Le raccourci Ctrl+S est désactivé sur cette page.');
//     }
// });

//SCROOL APPARUTION

const ratio = .1
const options = {
    root: null,
    rootMargin: "0px",
    threshold: .1,
};

const handleIntersect = function (entries, obsrver) {
    entries.forEach(function (entry) {
        if (entry.intersectionRatio > ratio) {
            entry.target.classList.add("reveal-visible")

                        //COUNTER SERVICES
               
        }
        // console.log(entry.intersectionRatio)
    })
}  

const observer = new IntersectionObserver(handleIntersect, options)
document.querySelectorAll('[class*="reveal"]').forEach(function (r) {
    observer.observe(r)
    


});







var swiper = new Swiper(".swiper", {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
    delay: 5500,
    disableOnInteraction: true,
    },
    pagination: {
    el: ".swiper-pagination",
    clickable: true,
    },
    navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
    },
});


