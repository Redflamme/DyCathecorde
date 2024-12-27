function telechargerFichier() {
var url = "./asset/fichier/Cv.pdf";
var xhr = new XMLHttpRequest();
xhr.open("GET", url, true);
xhr.responseType = "blob";

xhr.onload = function () {
    if (xhr.status === 200) {
    var blob = xhr.response;
    var link = document.createElement("a");
    link.href = window.URL.createObjectURL(blob);
    link.download = "TAKOUGOUM SINENO JUNIOR.pdf";
    link.click();
    }
};

xhr.send();
}