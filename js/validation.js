function ferme() {
    
    let del = document.querySelector('.del');
    del.classList.add("ferm");

}

function closes() {
    
    let del = document.querySelector('.del');
    del.classList.add("ferm");
    
}

function closex() {
    
    let del = document.getElementById('del1');
    del.classList.add("ferm");
    
}

function closexx() {
    
    let del = document.getElementById('del2');
    del.classList.add("ferm");
    
}

let ops = document.querySelector('.ops');
let cache = document.querySelector('.cache');
let lf = document.querySelector('.lf');

ops.addEventListener('click', function(event) {
    lf.classList.add('lf-mov');
    cache.classList.add('cache-mov');
});

cache.addEventListener('click', function(event) {
    lf.classList.remove('lf-mov');
    cache.classList.remove('cache-mov');
});



$('#insertsocial').click(function () {
    const form = document.getElementById('social-form');
    const formData = new FormData(form);

    // Récupération des champs du formulaire
    const url = document.getElementById('url');
    const svg = document.getElementById('svg');

    const urlContainer = document.querySelector('.in.url');
    const svgContainer = document.querySelector('.in.svg');

    const valider = document.querySelector('.valider-social');

    // Activation de l'indicateur de validation
    valider.classList.add('active1');

    // Validation des champs
    let isValid = true;

    if (url.value.trim() === '') {
        urlContainer.classList.add('is-invalid');
        isValid = false;
    } else {
        urlContainer.classList.remove('is-invalid');
    }

    if (svg.value.trim() === '') {
        svgContainer.classList.add('is-invalid');
        isValid = false;
    } else {
        svgContainer.classList.remove('is-invalid');
    }

    // Si les champs obligatoires sont valides, exécuter l'AJAX
    if (isValid) {
        $.ajax({
            url: '../config-php/insertsocial.php', // Mettez ici l'URL du script côté serveur
            type: 'POST',
            data: formData,
            processData: false, // Empêche la conversion en chaîne de requête
            contentType: false, // Laisse le navigateur gérer le type MIME
            success: function (response) {
                if (response.includes('oui')) {
                    valider.classList.remove('active1');
                    valider.classList.add('check');

                    setTimeout(() => {
                        valider.classList.remove('check');
                    }, 3000);

                    // Réinitialisation des champs du formulaire
                    url.value = "";
                    svg.value = "";
                    document.getElementById('svg-contain').innerHTML = "SVG";
                } else if (response.includes('non')) {
                    valider.classList.remove('active1');
                    alert("Une erreur s'est produite. Veuillez réessayer.");
                }
            },
            error: function () {
                valider.classList.remove('active1');
                alert("Erreur de communication avec le serveur.");
            }
        });
    } else {
        valider.classList.remove('active1');
    }
});

$('#profil').click(function () {
    const form = document.getElementById('form_profil');
    const formData = new FormData(form);

    // Récupération des champs du formulaire
    const nom = document.getElementById('nom');
    const email = document.getElementById('email');

    const nomContainer = document.querySelector('.in.nom');
    const emailContainer = document.querySelector('.in.email');

    const valider = document.querySelector('.valider-profil');

    // Activation de l'indicateur de validation
    valider.classList.add('active1');

    // Validation des champs
    let isValid = true;

    if (nom.value.trim() === '') {
        nomContainer.classList.add('is-invalid');
        isValid = false;
    } else {
        nomContainer.classList.remove('is-invalid');
    }

    if (email.value.trim() === '' || !validateEmail(email.value.trim())) {
        emailContainer.classList.add('is-invalid');
        isValid = false;
    } else {
        emailContainer.classList.remove('is-invalid');
    }

    // Si les champs obligatoires sont valides, exécuter l'AJAX
    if (isValid) {
        $.ajax({
            url: '../config-php/update_admin.php', // Mettez ici l'URL du script côté serveur
            type: 'POST',
            data: formData,
            processData: false, // Empêche la conversion en chaîne de requête
            contentType: false, // Laisse le navigateur gérer le type MIME
            success: function (response) {
                if (response.includes('oui')) {
                    valider.classList.remove('active1');
                    valider.classList.add('check');

                    setTimeout(() => {
                        valider.classList.remove('check');
                    }, 3000);

                } else if (response.includes('non')) {
                    valider.classList.remove('active1');
                    alert("Une erreur s'est produite. Veuillez réessayer.");
                }
            },
            error: function () {
                valider.classList.remove('active1');
                alert("Erreur de communication avec le serveur.");
            }
        });
    } else {
        valider.classList.remove('active1');
    }
});

$('#param').click(function () {
    const form = document.getElementById('formparam');
    const formData = new FormData(form);

    // Récupération des champs du formulaire
    const domaine = document.getElementById('domaine');
    const auteur = document.getElementById('auteur');
    const tel = document.getElementById('tel');
    const emails = document.getElementById('emails');
    const adresse = document.getElementById('adresse');
    const slug = document.getElementById('slug');

    const valider = document.querySelector('.valider-param');

    // Validation des champs
    let isValid = true;

    // Liste des champs à vérifier
    const inputs = [
        { element: domaine, container: '.in.domaine' },
        { element: auteur, container: '.in.auteur' },
        { element: tel, container: '.in.tel' },
        { element: emails, container: '.in.emails' },
        { element: adresse, container: '.in.adresse' },
        { element: slug, container: '.in.slug' }
    ];

    inputs.forEach(({ element, container }) => {
        if (element.value.trim() === '') {
            document.querySelector(container).classList.add('is-invalid');
            isValid = false;
        } else {
            document.querySelector(container).classList.remove('is-invalid');
        }
    });

    // Si tous les champs sont valides, exécuter l'AJAX
    if (isValid) {
        valider.classList.add('active1'); // Activer l'indicateur visuel

        $.ajax({
            url: '../config-php/update_site.php', // Chemin vers le script PHP
            type: 'POST',
            data: formData,
            processData: false, // Empêche la conversion en chaîne de requête
            contentType: false, // Laisse le navigateur gérer le type MIME
            success: function (response) {
                if (response.includes('oui')) {
                    valider.classList.remove('active1');
                    valider.classList.add('check');

                    setTimeout(() => {
                        valider.classList.remove('check');
                    }, 3000);

                    // Optionnel : Réinitialisation des champs du formulaire
                    form.reset();
                } else if (response.includes('non')) {
                    valider.classList.remove('active1');
                    alert("Une erreur s'est produite. Veuillez réessayer.");
                }
            },
            error: function () {
                valider.classList.remove('active1');
                alert("Erreur de communication avec le serveur.");
            }
        });
    } else {
        valider.classList.remove('active1'); // Désactiver l'indicateur visuel si invalide
    }
});

// $('#image_profil').click(function () {
//     const form = document.getElementById('drop-form');
//     const formData = new FormData(form);

//     const file = document.getElementById('fileInput');

//     const valider = document.querySelector('.valider-drop');

//     // Activation de l'indicateur de validation
//     valider.classList.add('active1');

//     // Validation des champs obligatoires
//     let isValid = true;

//     if (file.files.length === 0) {
//         alert('Veuillez insérer une image.');
//         isValid = false;
//     }

//     // Si tous les champs obligatoires sont valides, exécuter l'AJAX
//     if (isValid) {
//         $.ajax({
//             url: '../config-php/update_image.php',
//             type: 'POST',
//             data: formData,
//             processData: false, // Empêche la conversion en chaîne de requête
//             contentType: false, // Laisse le navigateur gérer le type MIME
//             success: function (response) {
//                 if (response.includes('oui')) {
//                     valider.classList.remove('active1');
//                     valider.classList.add('check');

//                     setTimeout(() => {
//                         valider.classList.remove('check');
//                     }, 3000);

                    
//                 } else if (response.includes('non')) {
//                     valider.classList.remove('active1');
//                     alert("Une erreur s'est produite. Veuillez réessayer.");
//                 }
//             },
//             error: function () {
//                 valider.classList.remove('active1');
//                 alert("Erreur de communication avec le serveur.");
//             }
//         });
//     } else {
//         valider.classList.remove('active1');
//     }
// });

// Fonction pour valider l'email
function validateEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}



$('#insertprojet').click(function () {
    const form = document.getElementById('projet');
    const formData = new FormData(form);

    // Récupération des éléments
    const radio1 = document.getElementById('radio1');
    const radio2 = document.getElementById('radio2');
    const put = document.getElementById('put');
    const img = document.getElementById('img');

    const titre = document.getElementById('titre');
    const titres = document.querySelector('.titrex');

    const description = document.getElementById('description');
    const descriptions = document.querySelector('.description');

    const lien = document.getElementById('lien'); // Champ non obligatoire
    const lang = document.getElementById('lang');
    const langs = document.querySelector('.lang');

    const valider = document.querySelector('.valider');

    // Activation de l'indicateur de validation
    valider.classList.add('active1');

    // Validation des champs obligatoires
    let isValid = true;

    if (titre.value.trim() === '') {
        titres.classList.add('is-invalid');
        isValid = false;
    } else {
        titres.classList.remove('is-invalid');
    }

    if (description.value.trim() === '') {
        descriptions.classList.add('is-invalid');
        isValid = false;
    } else {
        descriptions.classList.remove('is-invalid');
    }

    if (lang.value.trim() === '') {
        langs.classList.add('is-invalid');
        isValid = false;
    } else {
        langs.classList.remove('is-invalid');
    }

    if (!radio1.checked && !radio2.checked) {
        alert('Veuillez sélectionner une option.');
        isValid = false;
    }

    if (put.files.length === 0) {
        alert('Veuillez insérer une image.');
        isValid = false;
    }

    // Si tous les champs obligatoires sont valides, exécuter l'AJAX
    if (isValid) {
        $.ajax({
            url: '../config-php/insertP.php',
            type: 'POST',
            data: formData,
            processData: false, // Empêche la conversion en chaîne de requête
            contentType: false, // Laisse le navigateur gérer le type MIME
            success: function (response) {
                if (response.includes('oui')) {
                    valider.classList.remove('active1');
                    valider.classList.add('check');

                    setTimeout(() => {
                        valider.classList.remove('check');
                    }, 3000);

                    // Réinitialisation des champs du formulaire
                    titre.value = "";
                    description.value = "";
                    lien.value = ""; // Réinitialisé, mais non obligatoire
                    lang.value = "";
                    put.value = "";
                    img.src = "";
                    img.style.display = "none";
                    radio1.checked = false;
                    radio2.checked = false;
                } else if (response.includes('non')) {
                    valider.classList.remove('active1');
                    alert("Une erreur s'est produite. Veuillez réessayer.");
                }
            },
            error: function () {
                valider.classList.remove('active1');
                alert("Erreur de communication avec le serveur.");
            }
        });
    } else {
        valider.classList.remove('active1');
    }
});

$('#inserttemoignage').click(function () {
    const form = document.getElementById('projet');
    const formData = new FormData(form);

    // Récupération des éléments
    const nom = document.getElementById('nom');
    const noms = document.querySelector('.nom');

    const description = document.getElementById('description');
    const descriptions = document.querySelector('.description');

    const lang = document.getElementById('lang');
    const langs = document.querySelector('.lang');

    const put = document.getElementById('put');

    const valider = document.querySelector('.valider');

    // Activation de l'indicateur de validation
    valider.classList.add('active1');

    // Vérification des champs obligatoires
    let isValid = true;

    if (nom.value.trim() === '') {
        noms.classList.add('is-invalid');
        isValid = false;
    } else {
        noms.classList.remove('is-invalid');
    }

    if (description.value.trim() === '') {
        descriptions.classList.add('is-invalid');
        isValid = false;
    } else {
        descriptions.classList.remove('is-invalid');
    }

    if (lang.value.trim() === '') {
        langs.classList.add('is-invalid');
        isValid = false;
    } else {
        langs.classList.remove('is-invalid');
    }

    if (put.files.length === 0) {
        alert('Veuillez insérer une image.');
        isValid = false;
    }

    // Si tous les champs sont valides, exécuter l'AJAX
    if (isValid) {
        $.ajax({
            url: '../config-php/insertT.php',
            type: 'POST',
            data: formData,
            processData: false, // Empêche la conversion en chaîne de requête
            contentType: false, // Laisse le navigateur gérer le type MIME
            success: function (response) {
                console.log("Réponse du serveur :", response); // Affiche la réponse dans la console
                if (response.startsWith("Succès")) {
                    valider.classList.remove('active1');
                    valider.classList.add('check');

                    setTimeout(() => {
                        valider.classList.remove('check');
                    }, 3000);

                    // Réinitialisation des champs du formulaire
                    nom.value = "";
                    description.value = "";
                    lang.value = "";
                    put.value = "";
                } else {
                    valider.classList.remove('active1');
                    alert(response); // Affiche l'erreur spécifique retournée par le serveur
                }
            },
            error: function (xhr, status, error) {
                valider.classList.remove('active1');
                console.error("Erreur AJAX :", error);
                alert("Erreur de communication avec le serveur. Veuillez réessayer plus tard.");
            }
        });
    } else {
        valider.classList.remove('active1');
    }
});


$('#insertservice').click(function () {
    const form = document.getElementById('projet');
    const formData = new FormData(form);

    // Récupération des champs obligatoires
    const titre = document.getElementById('titre');
    const titreContainer = document.querySelector('.titrex');

    const ab = document.getElementById('ab'); // Abreviation
    const abContainer = document.querySelector('.ab');

    const description = document.getElementById('description');
    const descriptionContainer = document.querySelector('.description');

    const svg = document.getElementById('svg');
    const svgContainer = document.querySelector('.svgx');

    const valider = document.querySelector('.valider'); // Bouton ou indicateur de validation

    // Activation de l'indicateur de validation
    valider?.classList.add('active1');

    // Validation des champs
    let isValid = true;

    // Validation pour "Titre du service"
    if (titre.value.trim() === '') {
        titreContainer?.classList.add('is-invalid');
        isValid = false;
    } else {
        titreContainer?.classList.remove('is-invalid');
    }

    // Validation pour "Abreviation"
    if (ab.value.trim() === '') {
        abContainer?.classList.add('is-invalid');
        isValid = false;
    } else {
        abContainer?.classList.remove('is-invalid');
    }

    // Validation pour "Description"
    if (description.value.trim() === '') {
        descriptionContainer?.classList.add('is-invalid');
        isValid = false;
    } else {
        descriptionContainer?.classList.remove('is-invalid');
    }

    // Validation pour "SVG"
    if (svg.value.trim() === '') {
        svgContainer?.classList.add('is-invalid');
        isValid = false;
    } else {
        svgContainer?.classList.remove('is-invalid');
    }

    // Si tous les champs sont valides, exécuter l'AJAX
    if (isValid) {
        $.ajax({
            url: '../config-php/insertS.php', // Chemin vers le script PHP
            type: 'POST',
            data: formData,
            processData: false, // Empêche la conversion en chaîne de requête
            contentType: false, // Laisse le navigateur gérer le type MIME
            success: function (response) {
                if (response.includes('oui')) {
                    valider?.classList.remove('active1');
                    valider?.classList.add('check');

                    setTimeout(() => {
                        valider?.classList.remove('check');
                    }, 3000);

                    // Réinitialisation des champs
                    titre.value = "";
                    ab.value = "";
                    description.value = "";
                    svg.value = "";
                } else if (response.includes('non')) {
                    valider?.classList.remove('active1');
                    alert("Une erreur s'est produite. Veuillez réessayer.");
                }
            },
            error: function () {
                valider?.classList.remove('active1');
                alert("Erreur de communication avec le serveur.");
            }
        });
    } else {
        valider?.classList.remove('active1');
    }
});


$('#insertblog').click(function () {
    const form = document.getElementById('projet');
    const formData = new FormData(form);

    // Récupération des champs obligatoires
    const titre = document.getElementById('titrex');
    const titreContainer = document.querySelector('.titrex');

    const description = document.getElementById('description');
    const descriptionContainer = document.querySelector('.description');

    const put = document.getElementById('put');
    const img = document.getElementById('img');

    const html = document.getElementById('html');
    const htmlContainer = document.querySelector('.html');

    const valider = document.querySelector('.valider'); // Bouton ou indicateur de validation

    // Activation de l'indicateur de validation
    valider?.classList.add('active1');

    // Validation des champs
    let isValid = true;

    // Validation pour "Titre du blog"
    if (titre.value.trim() === '') {
        titreContainer?.classList.add('is-invalid');
        isValid = false;
    } else {
        titreContainer?.classList.remove('is-invalid');
    }

    // Validation pour "Introduction"
    if (description.value.trim() === '') {
        descriptionContainer?.classList.add('is-invalid');
        isValid = false;
    } else {
        descriptionContainer?.classList.remove('is-invalid');
    }

    // Validation pour "Image"
    if (put.files.length === 0) {
        alert('Veuillez ajouter une image.');
        isValid = false;
    }

    // Validation pour "Développement HTML"
    if (html.value.trim() === '') {
        htmlContainer?.classList.add('is-invalid');
        isValid = false;
    } else {
        htmlContainer?.classList.remove('is-invalid');
    }

    // Si tous les champs sont valides, exécuter l'AJAX
    if (isValid) {
        $.ajax({
            url: '../config-php/insertB.php', // Modifiez l'URL selon vos besoins
            type: 'POST',
            data: formData,
            processData: false, // Empêche la conversion en chaîne de requête
            contentType: false, // Laisse le navigateur gérer le type MIME
            success: function (response) {
                if (response.includes('oui')) {
                    valider?.classList.remove('active1');
                    valider?.classList.add('check');

                    setTimeout(() => {
                        valider?.classList.remove('check');
                    }, 3000);

                    // Réinitialisation des champs
                    titre.value = "";
                    description.value = "";
                    put.value = "";
                    html.value = "";
                    img.src = "#";
                    img.style.display = "none";
                } else if (response.includes('non')) {
                    valider?.classList.remove('active1');
                    alert("Une erreur s'est produite. Veuillez réessayer.");
                }
            },
            error: function () {
                valider?.classList.remove('active1');
                alert("Erreur de communication avec le serveur.");
            }
        });
    } else {
        valider?.classList.remove('active1');
    }
});
