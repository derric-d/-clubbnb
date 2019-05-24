const navbar = document.getElementById("nav");
const home = document.getElementById("home-link");
const create = document.getElementById("create-link");
const profile = document.getElementById("profile-link");
// const login = document.getElementById("login-link");


window.onscroll = function(){
  if (window.pageYOffset > 80) {
    navbar.style.background = "white";
    home.style.color = "black";
    profile.style.color = "black";
    create.style.color = "black";
    // login.style.color = "black";
  }
  else {
    navbar.style.background = "transparent";
    home.style.color = "#ABC7C9";
    profile.style.color = "#ABC7C9";
    create.style.color = "#ABC7C9";
    // login.style.color = "#ABC7C9";
  }
}
