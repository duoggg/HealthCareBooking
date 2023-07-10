
const nav = document.querySelector("nav.nav-bar");

/* ---------------------  Sticky Navbar --------------------- */

function stickyNavbar () {
    nav.classList.toggle("scrolled", window.pageYOffset > 0);
}
window.addEventListener("scroll", stickyNavbar)

/* ---------------------  Menu Profile --------------------- */
let menu_profile = document.querySelector('.nav-bar .container .menu-profile-tab');

document.querySelector('#user-ava').onclick = () =>{
  menu_profile.classList.toggle('active');
}

/* ---------------------  Option booking bar --------------------- */
let menu_booking = document.querySelector('.nav-bar .container .links .menu-booking-opt');

document.querySelector('.nav-bar .container .links #nav-booking').onclick = () =>{
  menu_booking.classList.toggle('active');
}

window.onscroll = () =>{
  menu_booking.classList.remove('active');
}

/* ---------------------  Menu bar --------------------- */

let navlink = document.querySelector('header .nav-bar .container .links');

document.querySelector('#menu-btn').onclick = () =>{
    navlink.classList.toggle('active');
}

window.onscroll = () =>{
    navlink.classList.remove('active');
}

/* ---------------------  Pagination Bar --------------------- */
let list_link = document.getElementsByClassName("list-link");

let currentValue = 1;

function activeLink(){
    for(l of list_link){
        l.classList.remove("active");   
    }
    event.target.classList.add("active");
    currentValue = event.target.value;
}

function backBtn(){
    if (currentValue > 1){
        for(l of list_link){
            l.classList.remove("active");   
        }
        currentValue--;
        list_link[currentValue - 1].classList.add("active");
    }
}

function nextBtn(){
    if (currentValue < 5){
        for(l of list_link){
            l.classList.remove("active");   
        }
        currentValue++;
        list_link[currentValue - 1].classList.add("active");
    }
}