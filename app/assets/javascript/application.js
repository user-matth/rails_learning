//= require clipboard
//= require jquery
//= require jquery_ujs

console.log('Hello from application.js')

function copyFunction() {
    // Get the text field
    var copyText = document.getElementById("copyFunction");
  
    // Select the text field
    copyText.select();
    copyText.setSelectionRange(0, 99999); // For mobile devices
  
    // Copy the text inside the text field
    navigator.clipboard.writeText(copyText.value);
    
    // Alert the copied text
    // console.log("Copied Successfully");
    displayToast()
    timeOuut()
}

function displayToast(){
    document.querySelector('.toast').style["display"] = "block";
    document.querySelector('.toast').style["position"] = "fixed";
    document.querySelector('.toast').style["top"] = "2%";
    document.querySelector('.toast').style["right"] = "2%";
    document.querySelector('.toast').style["z-index"] = "999999";
    document.querySelector('.toast').style["transition"] = "ease-in-out .5s";
}
function timeOuut(){
    setTimeout(unDisplayToast, 5000);
}
function unDisplayToast(){
    document.querySelector('.toast').style["display"] = "none";
    document.querySelector('.toast').style["transition"] = "ease-in-out .5s";
}