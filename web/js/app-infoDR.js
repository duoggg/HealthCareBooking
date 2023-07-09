
const nav = document.querySelector("nav.container");

/* ---------------------  Sticky Navbar --------------------- */

function stickyNavbar () {
    nav.classList.toggle("scrolled", window.pageYOffset > 0);
}
window.addEventListener("scroll", stickyNavbar)

/* --------------------- Schedule Box--------------------- */

const today = new Date();
const next_day = new Date();
const dateInput = document.getElementById("date");
const shift = document.getElementsByClassName("shift");
const serviceInfo = document.getElementById("serviceInfo");
const service_label = document.getElementById("service-label");
const service_price = document.getElementById("service-price");

// Cộng thêm 7 ngày
next_day.setDate(today.getDate() + 7);

// Lấy số thứ tự của ngày hiện tại
var current_day = today.getDay();
var default_date = today.toISOString().split("T")[0];
var lastValue = default_date;

// Đặt giá trị mặc định cho input date
dateInput.value = default_date;
dateInput.min = today.toISOString().split("T")[0];
dateInput.max = next_day.toISOString().split("T")[0];


/* --------------------- Shift Option--------------------- */


let current_shift = 0;

dateInput.addEventListener("input", function() {
    // Reset giá trị lựa chọn ca và ẩn thông tin dịch vụ
    for(s of shift){
        s.classList.remove("active");
    };
    serviceInfo.style.display = "none";
  });

   

