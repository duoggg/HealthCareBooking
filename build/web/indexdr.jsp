<%-- 
    Document   : indexdr
    Created on : Jun 18, 2023, 10:22:48 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.List"%>

<%@page import = "java.util.ArrayList"%>
<%@page import = "model.BacSi"%>
<%@page import = "dal.ShowBS"%>
<%@page import = "dal.BenhNhanDao"%>
<%@page import = "model.BenhNhan"%>


<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt khám với bác sĩ qua Health Care - online service</title>
<!--   <script type="text/javascript">
    function buy(id,i){
        var form = document.getElementById("f"+i);
        form.action ="dat?id="+id;
        form.submit();
    }
    
</script>-->
    <!-- CSS Files -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link rel="stylesheet" href="./css/style-DR.css">
</head>

<body>
    <header>
       
                    
        <nav class="info">
            <div class="container">
                <div class="hotline"><i class="uil uil-phone"></i> Hotline đặt khám : </div>
                <div class="profile-tab">
                     <% String idpa = (String)session.getAttribute("myAccount");
                    if (idpa == null||idpa.equals("admin")){
                    
                    out.println(" <a href=\"login.jsp\" class=\"username\">Đăng nhập</a> | <a href=\"info.jsp\" class=\"login\">Đăng ký</a>");
                    }
                    else{
                         
                         
                         BenhNhanDao c = new BenhNhanDao();
                         
                         BenhNhan bn = c.getBenhNhanById(idpa);
                        out.println("<a href=\"info.jsp\" class=\"username\">Xin Chào "+bn.getUsername() + " !</a>");
                    }
                    %>
                    <span class="username"></span>
                    <div class="user-ava" id="user-ava">
                        <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava-users.png">
                        <i class="uil uil-angle-down"></i>
                    </div>
                    </div>
                </div>
            </div>
        </nav>
        <nav class="nav-bar">
            
           <div class="container">
                <a href="#" class="logo">
                    <img src="./assets/ava_v2.png" title="Booking Health Care Web"/>
                </a>
               <div class="links">
                   <a href="homepage.jsp" class="nav-link">Trang chủ</a>
                    <a class="nav-link" id="nav-booking">Đặt khám <i class="uil uil-angle-down"></i></a>
                      <%
                        if(session.getAttribute("myAccount")!=null){
                        %>
                    <a href="info.jsp" class="nav-link">Hồ sơ cá nhân</a>
                     <%
                        }
                        %>
                    <a href="#" class="nav-link">Hỏi đáp bác sĩ</a>
                    
                    <div class="menu-booking-opt">
                        <a href="idlisdoc" class="booking-opt">Bác sĩ</a>
                        <a href="idlisser" class="booking-opt">Gói khám</a>
                    </div>
                </div>
           
                <div id="menu-btn"><i class="uil uil-bars"></i></div>
                <%
                        if(session.getAttribute("myAccount")!=null){
                        %>
                <div class="menu-profile-tab">
                    <a href="info.jsp" id="menu-opt"><i class="uil uil-user"></i>Hồ sơ cá nhân</a>
                    <a href="#" id="menu-opt"><i class="uil uil-schedule"></i>Lịch sử đặt khám</a>
                    <a href="#" id="menu-opt"><i class="uil uil-shopping-cart"></i>Đơn hàng</a>
                    <a href="#" id="menu-opt"><i class="uil uil-question-circle"></i>Câu hỏi của tôi</a>
                    <a href="#" id="menu-opt"><i class="uil uil-keyhole-circle"></i>Đổi mật khẩu</a>
                    <a href="logout" id="menu-opt"><i class="uil uil-signout"></i>Đăng xuất</a>
                </div>
                <%
                        }
                        %>

            </div>
        </nav>
    </header>

    <main>
        <section class="showcase-area">
            <sub-section class="search-bar">
                <div class="container">
                    <h1>Đặt khám trước qua Health Care - online service</h1>
                    <p class="text">Để được đón tiếp ưu tiên tại bệnh viện và được tư vấn với bác sĩ giỏi</p>
                    <form id="myForm" name="fff" action="searchdoc" method="post">
                    <div class="search">
                        <i class="uil uil-search"></i>
                        
                        <input type="text" name="docname"   placeholder="Tìm triệu chứng, chuyên khoa, tên bác sĩ ...">
                       
                    </div>
                         </form>
                </div>
            </sub-section>
            <sub-section class="doctor">
                <div class="container">
                    <div class="doctor-header">
                        <h2>Chọn bác sĩ</h2>
                        <div class="filter"> 
                            
<!--                            <input type="text" name ="namedoc" value = "" maxlength="50" class="box">-->
                        </div>
                    </div>
                    <div class="doctor-list">
                        

                             <%  ShowBS d = new ShowBS();
                                 List<BacSi> bs = d.getAll();
                                 int p =   (int)request.getAttribute("page");
                                 int num = (int)request.getAttribute("num");
                                 if(request.getAttribute("doctor")!=null){
                                    bs= (List<BacSi>)request.getAttribute("doctor");
                                }
                                 

                                
                %>

                
             

                                


                        <%
                           if(bs.size()==0){
                           out.println("<div class=\"doctor-list\"> Không tìm thấy  </div>");
                           }
                           
                           for(int i =0;i<9&&i<bs.size();i++){
                           
                           BacSi p1 = bs.get(i);
                           ShowBS sbs = new ShowBS();
                            String id = p1.getIDBacSi();
                           String tenKhoa = sbs.getKhoaByIdBacSi(id);
                           
                          %>
                        
                           <form id="<%=("f"+i)%>"  action="" method="post" class="dr-card">
                               <style>
                                   .dr-image<%=i%>{
                                        width: 200px;
                                        height: 200px;
                                        border-radius: 50%;
                                        background: url(<%=p1.getLink()%>) no-repeat center / cover;
                                        border: 4px solid #4edd95;
                                        position: absolute;
                                        top: 15px;
                                       }
                               </style>
                                   
                                <div class="dr-image<%=i%>">
<!--                                     <img src="" alt=""> -->
                                </div>
                                <div class="dr-info">
                                    <h3><a href="#" class="dr-link"><%=p1.getHoten()%></a></h3>
                                    <p class="khoa"><%=tenKhoa%></p>
                                    <p class="cost">Giá khám : <span>500.000đ</span></p>
                                    <a href="dat?id=<%=id%>" class="btn secondary-btn">
                                         Đặt khám
                                    
                                    </a>
                                </div>
                            </form>
                            <%
                                }
                    %>
                    </div>
                </div>
            </sub-section>
            <sub-section class="pagination">
                <div class="container">
                    <button class="btn" onclick="backBtn()"> <i class="uil uil-angle-left-b"></i> prev</button>
                    <ul>
                         <%
                for(int i =1;i<=num;i++){
                %>
                <a  href="idlisdoc?page=<%=i%>">
                    <li class="list-link active" value="<%=i%>" onclick="activeLink()"><%=i%></li>
                </a>
                <%
                    }
                %>
<!--                        <li class="list-link active" value="1" onclick="activeLink()">1</li>
                        <li class="list-link" value="2" onclick="activeLink()">2</li>
                        <li class="list-link" value="3" onclick="activeLink()">3</li>
                        <li class="list-link" value="4" onclick="activeLink()">4</li>
                        <li class="list-link" value="5" onclick="activeLink()">5</li>-->
                    </ul>
                    <button class="btn" onclick="nextBtn()">next <i class="uil uil-angle-right-b"></i></button>
                </div>
            </sub-section>
        </section>
    </main>

    <footer>
        <div class="container">
            <a href="#" class="logo">
                <img src="./assets/ava_v2.png" title="Booking Health Care Web"/>
            </a>
            <ul class="social-media">
                <li>
                    <a href="#" class="social-link"><i class="uil uil-facebook-f"></i></a>
                </li>
                <li>
                    <a href="#" class="social-link"><i class="uil uil-twitter"></i></a>
                </li>
                <li>
                    <a href="#" class="social-link"><i class="uil uil-instagram"></i></a>
                </li>
            </ul>
        </div>
    </footer>

    <!-- JavaScript Files -->

    <script >
        
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
</script>
    <script>
    document.addEventListener("keydown", function(event) {
  if (event.keyCode === 13) {
    event.preventDefault(); // Ngăn chặn hành vi mặc định của phím Enter (như xuống dòng trong textarea)
    document.getElementById("myForm").submit(); // Thay "myForm" bằng ID của form bạn muốn submit
  }
  
  
});
</script>

<style>
    
header .info{
    position: relative;
    width: 100%;
    margin: 0 auto;
    padding: 3px 0 ;
    background-color: var(--main-color-1);
    color:#fff;
}

.info .container{
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}

.info .container .profile-tab{
    /* position: relative; */
    display: flex;
    align-items: center;
    justify-content: center;
}

.info .container .profile-tab .username{
    margin-right: 15px;
    color: white;
    font-weight: 500;
} 

.info .container .profile-tab .user-ava{
    cursor: pointer;
}

.info .container .profile-tab .user-ava img{
    margin-top: 5px;
    width: 25px;
    height: 25px;
}

.info .container .profile-tab .uil.uil-angle-down{
    font-size: 25px;
    margin-left: -5px;
}


header .nav-bar{
    position: relative;
    width: 100%;
    margin: 0 auto;
    background-color: white;
    color:#fff;
}

.container{
    position: relative;
    width: 100%;
    max-width: 1300px;
    padding: 0 20px;
    margin: 0 auto;
    /* background-color: #fff; */
}


.logo img{
    width: 250px;
}

header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 10;
}

header .logo{
    height: 55px;
    line-height: 55px;
}

span{
    /* font-size: 20px; */
    font-weight: 520;
    color: var(--text-color);
}

/* ---------------------  Navbar Styles --------------------- */



nav.scrolled {
    background-color: var(--bg-color-transparent);
    box-shadow: 0 5px 20px 0.1px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur();
}

nav .container{
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    transition: 0.5s;
}   

nav.scrolled .logo{
    height: 50px;
    line-height: 50px;
}

.nav-link{
    position: relative;
    display: inline-block;
    margin-right: 1rem;
    /* text-transform: uppercase; */
    font-size: 1rem;
    /* letter-spacing: 0.5px; */
    color: var(--text-color);
    font-weight: 520;
    transition: 0.3s;
    cursor: pointer;
}

.nav-link .uil.uil-angle-down{
    font-size: 20px;
}

.nav-link::after{
    content: "";
    position: absolute;
    width: 0;
    height: 2px;
    border-radius: 5px;
    background-color: var(--main-color-1);
    bottom: -3px;
    left: 0;
    transition: 0.3s;
}

.nav-link:hover{
    color: var(--main-color-1);
}

.nav-link:hover::after{
    width: 100%;
}

#menu-btn{
    padding-right: 0.5rem;
    font-size: 25px;
    font-weight: 800;
    cursor: pointer;
    color: var(--text-color);
    display: none;
}

.nav-bar .container .menu-profile-tab{
    position: absolute;
    top: 0%; right: 2rem;
    /* max-width: 160px; */
    background-color: var(--bg-color);
    backdrop-filter: blur(.4rem);
    border-radius: .5rem;
    transform: scale(0);
    transform-origin: top right ;
    transition: .1s linear;
    background-color: var(--bg-color-transparent);
    box-shadow: 0 5px 20px 0.1px rgba(0, 0, 0, 0.1);
} 

.nav-bar .container .menu-profile-tab.active{
    transform: scale(1);
}

.nav-bar .container .menu-profile-tab #menu-opt{
    display: block;
    padding: .5rem 1.5rem;
    margin: 1.5rem .5rem;
    color: var(--text-color);
    border-radius: .5rem;
    transition: .2s;
}

.nav-bar .container .menu-profile-tab #menu-opt:hover{
    background-color: var(--main-color-1);
    color: white;
}

.nav-bar .container .links .menu-booking-opt{
    position: absolute;
    top: 100%; right: 28rem;
    /* max-width: 160px; */
    background-color: var(--bg-color);
    backdrop-filter: blur(.4rem);
    border-radius: .5rem;
    transform: scale(0);
    transform-origin: top ;
    transition: .1s linear;
    background-color: var(--bg-color-transparent);
    box-shadow: 0 5px 20px 0.1px rgba(0, 0, 0, 0.1);
} 

.nav-bar .container .links .menu-booking-opt.active{
    transform: scale(1);
}

.nav-bar .container .links .menu-booking-opt .booking-opt{
    display: block;
    padding: .5rem 1.5rem;
    margin: 1.5rem .5rem;
    color: var(--text-color);
    border-radius: .5rem;
    transition: .2s;
}

.nav-bar .container .links .menu-booking-opt .booking-opt:hover{
    background-color: var(--main-color-1);
    color: white;
}

</style>

</body>

</html>    

 
