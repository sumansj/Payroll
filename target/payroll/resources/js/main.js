function loadContent(){
  var contentDiv = document.getElementById("app");
  contentDiv.innerHTML = location.hash.substr(1);  //substr(1) removes the first character and display other
}

if(!location.hash) {
  location.hash = "#home";
}

loadContent();

window.addEventListener("hashchange", loadContent);

