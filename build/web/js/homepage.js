

const nav = document.querySelector("nav.nav-bar");

/* ---------------------  Sticky Navbar --------------------- */

function stickyNavbar () {
    nav.classList.toggle("scrolled", window.pageYOffset > 0);
}
window.addEventListener("scroll", stickyNavbar)

/* ---------------------  Menu bar --------------------- */
let menu_profile = document.querySelector('.nav-bar .container .menu-profile-tab');

document.querySelector('#user-ava').onclick = () =>{
  menu_profile.classList.toggle('active');
}

/* ---------------------  Menu bar --------------------- */

let navlink = document.querySelector('header .nav-bar .container .links');

document.querySelector('#menu-btn').onclick = () =>{
    navlink.classList.toggle('active');
}

window.onscroll = () =>{
    navlink.classList.remove('active');
}

/* ---------------------  Swiper --------------------- */

const progressCircle = document.querySelector(".autoplay-progress svg");
const progressContent = document.querySelector(".autoplay-progress span");
var swiper = new Swiper(".doctor-slider", {
    slidesPerView: 1,
    spaceBetween: 10,
    autoplay: {
        delay: 2500,
        disableOnInteraction: false
      },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    breakpoints: {
      "@0.00": {
        slidesPerView: 1,
        spaceBetween: 10,
      },
      "@0.75": {
        slidesPerView: 2,
        spaceBetween: 20,
      },
      "@1.00": {
        slidesPerView: 3,
        spaceBetween: 40,
      },
    },
    on: {
        autoplayTimeLeft(s, time, progress) {
          progressCircle.style.setProperty("--progress", 1 - progress);
          progressContent.textContent = `${Math.ceil(time / 1000)}s`;
        }
      }
  });