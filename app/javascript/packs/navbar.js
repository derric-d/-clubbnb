const initUpdateNavbarOnScroll = () => {
  const navbarjs = document.querySelector('.navbar');
  if (navbarjs) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbarjs.classList.add('navbar-trans');
      } else {
        navbarjs.classList.remove('navbar-trans');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };


const navbar = document.getElementById("nav");

window.onscroll = function(){
  if (window.pageYOffset > 80) {
    navbar.style.background = "white";
  }
  else {
    navbar.style.background = "transparent";
  }
}

