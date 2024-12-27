$(document).ready(function() {
    // Fonction pour détecter l'interface utilisée (PC, tablette ou mobile)
    function detectDeviceType() {
        const userAgent = navigator.userAgent.toLowerCase();
        if (/mobile|android|iphone|ipad|tablet/i.test(userAgent)) {
            if (/ipad|tablet/i.test(userAgent)) {
                return 'Tablette';
            } else {
                return 'Mobile';
            }
        }
        return 'PC';
    }

    // Vérification dans le localStorage
    const storedDeviceAddress = localStorage.getItem('visitorDeviceAddress');

    if (!storedDeviceAddress) {
        // Récupération des informations
        const interfaceType = detectDeviceType();
        const deviceAddress = navigator.userAgent;
        const currentDate = new Date();
        const date = currentDate.toISOString().split('T')[0]; // Format YYYY-MM-DD
        const time = currentDate.toTimeString().split(' ')[0]; // Format HH:mm:ss

        // Stockage de l'adresse dans le localStorage
        // localStorage.setItem('visitorDeviceAddress', deviceAddress);

        // Objet des données à envoyer
        const visitorData = {
            interface: interfaceType,
            device: deviceAddress,
            date: date,
            time: time
        };

        // Envoi des données au backend via AJAX
        $.ajax({
            url: './config-php/visiteur.php', // Remplacez par l'URL de votre backend
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(visitorData),
            success: function(response) {
                console.log('Données du visiteur enregistrées avec succès:', response);
            },
            error: function(error) {
                console.error('Erreur lors de l\'enregistrement des données du visiteur:', error);
            }
        });
    } else {
        console.log('Adresse déjà enregistrée dans le localStorage.');
    }
});
