const logo = document.querySelector('.logo');
const navbar = document.querySelector('.navbar-wagon');

if(logo) {
  navbar.classList.add('position-fixed');
}
if(!logo) {
  navbar.classList.remove('position-fixed');
}
