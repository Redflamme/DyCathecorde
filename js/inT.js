let put = document.getElementById('put');
let img = document.getElementById('img');

img.style.display="none";

put.addEventListener("change", () => {
    img.src = URL.createObjectURL(put.files[0]);
    img.style.display="block";

    
});