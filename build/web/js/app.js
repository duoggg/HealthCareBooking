

const nav = document.querySelector("nav.container");

/* ---------------------  Sticky Navbar --------------------- */

function stickyNavbar () {
    nav.classList.toggle("scrolled", window.pageYOffset > 0);
}
window.addEventListener("scroll", stickyNavbar)