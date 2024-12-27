document.getElementById('derb').style.display="none";
document.getElementById('radio2').checked="true";

function oui() {
    document.getElementById('derb').style.display="block";
}

function non() {
    document.getElementById('derb').style.display="none";
}

let put = document.getElementById('put');
let img = document.getElementById('img');

img.style.display="none";

put.addEventListener("change", () => {
    img.src = URL.createObjectURL(put.files[0]);
    img.style.display="block";

    
});