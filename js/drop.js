const dropZone = document.getElementById('dropZone');
const fileInput = document.getElementById('fileInput');
const fileNameDisplay = document.getElementById('fileName');

// Empêche le comportement par défaut lors du glisser-déposer
['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
    dropZone.addEventListener(eventName, (e) => e.preventDefault());
});

// Ajoute une classe visuelle lors du glissement
['dragenter', 'dragover'].forEach(eventName => {
    dropZone.addEventListener(eventName, () => dropZone.classList.add('dragover'));
});

['dragleave', 'drop'].forEach(eventName => {
    dropZone.addEventListener(eventName, () => dropZone.classList.remove('dragover'));
});

// Gère le fichier déposé
dropZone.addEventListener('drop', (e) => {
    const files = e.dataTransfer.files;
    displayFileName(files);
});

// Clique pour sélectionner un fichier
dropZone.addEventListener('click', () => fileInput.click());
fileInput.addEventListener('change', () => displayFileName(fileInput.files));

function displayFileName(files) {
    const file = files[0];
    if (file) {
    fileNameDisplay.textContent = `Fichier sélectionné : ${file.name}`;
    } else {
    fileNameDisplay.textContent = "Aucun fichier sélectionné.";
    }
}