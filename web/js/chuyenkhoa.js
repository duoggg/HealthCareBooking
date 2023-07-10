
const nav = document.querySelector("nav.container");

/* ---------------------  Sticky Navbar --------------------- */

function stickyNavbar () {
    nav.classList.toggle("scrolled", window.pageYOffset > 0);
}
window.addEventListener("scroll", stickyNavbar)

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