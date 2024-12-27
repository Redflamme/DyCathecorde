document.getElementById('svg').addEventListener('input', function () {
    const svgCode = this.value;
    const svgContainer = document.querySelector('.let-svg');

    // Supprime le contenu précédent de la div
    svgContainer.innerHTML = '';

    try {
        // Crée un nouvel élément DOM à partir du code SVG
        const svgElement = new DOMParser().parseFromString(svgCode, 'image/svg+xml').documentElement;

        // Ajoute l'élément SVG à la div
        svgContainer.appendChild(svgElement);
    } catch (error) {
        svgContainer.innerHTML = '<p style="color:red;">Le code SVG n\'est pas valide.</p>';
    }
});
