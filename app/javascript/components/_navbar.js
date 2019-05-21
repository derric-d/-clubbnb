const navbar = document.getElementById("nav");

window.onscroll = function(){
  if (window.pageYOffset > 80) {
    navbar.style.background = "white";
  }
  else {
    navbar.style.background = "transparent";
  }
}
