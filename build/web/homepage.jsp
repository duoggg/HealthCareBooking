<%-- 
    Document   : homepage
    Created on : Jul 9, 2023, 8:22:01 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "dal.BenhNhanDao"%>
<%@page import = "model.BenhNhan"%>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava.png" type="assets/x-icon" />
    <title>Health Care - online service</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"/>

    <!-- CSS Files -->
    <link rel="stylesheet" href="./css/homepage.css">
    
</head>

<body>
    <!-- Header -->

    <header>
        <nav class="info">
            <div class="container">
                <div class="hotline"><i class="uil uil-phone"></i> Hotline đặt khám : </div>
<!--                 <li>
                   
                </li>-->
                <div class="profile-tab">
                     <%
                    if (session.getAttribute("myAccount") == null){
                    
                    out.println(" <a href=\"login.jsp\" class=\"username\">Đăng nhập</a> | <a href=\"info.jsp\" class=\"login\">Đăng ký</a>");
                    }
                    else{
                         String idpa = (String)session.getAttribute("myAccount");
                         BenhNhanDao c = new BenhNhanDao();
                         BenhNhan bn = c.getBenhNhanById(idpa);
                        out.println("<a href=\"info.jsp\" class=\"username\">Xin Chào "+bn.getUsername() + " !</a>");
                    }
                    %>
                    <div class="user-ava">
                        <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava-users.png">
                        <i class="uil uil-angle-down"></i>
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
                    <a href="idlisdoc" class="nav-link">Đặt khám <i class="uil uil-angle-down"></i></a>
                    <a href="<% if(session.getAttribute("myAccount")!=null) {%>info.jsp<%}%>" class="nav-link">Hồ sơ cá nhân</a>
                    <a href="#" class="nav-link">Hỏi đáp bác sĩ</a>
                    <a href="#" class="nav-link">Sản phẩm y tế</a>
                </div>
                <div id="menu-btn"><i class="uil uil-bars"></i></div>
                <div class="menu-profile-tab">
                    <a href="#" id="menu-opt"><i class="uil uil-user"></i>Hồ sơ cá nhân</a>
                    <a href="#" id="menu-opt"><i class="uil uil-schedule"></i>Lịch sử đặt khám</a>
                    <a href="#" id="menu-opt"><i class="uil uil-shopping-cart"></i>Đơn hàng</a>
                    <a href="#" id="menu-opt"><i class="uil uil-question-circle"></i>Câu hỏi của tôi</a>
                    <a href="#" id="menu-opt"><i class="uil uil-keyhole-circle"></i>Đổi mật khẩu</a>
                    <a href="#" id="menu-opt"><i class="uil uil-signout"></i>Đăng xuất</a>
                </div>
            </div>
        </nav>
    </header>

    <!-- Main -->

    <main>
        <section class="showcase-area">
            <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/bg-banner-01.png" class="bg-banner">
            <div class="container">
                <div class="showcase-info">
                    <h2 class="sub-heading">Nền Tảng Y Tế</h2>
                    <h1 class="heading">CHĂM SÓC SỨC KHỎE TOÀN DIỆN</h1>
                    <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava-text2.png" class="showcase-logo">
                </div>
                <div class="service">
                    <ul>
                        <li><a href="#" class="service-btn">
                            <div class="icon">
                                <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/kham-ck-01.png">
                            </div>
                            <p class="text">Khám <br>chuyên khoa</p>
                        </a></li>
                        <li><a href="#" class="service-btn">
                            <div class="icon">
                            <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ho-so-kham-benh-01.png" class="icon">
                            </div>
                            <p class="text">Hồ sơ <br>cá nhân</p>
                        </a></li>
                        <li><a href="#" class="service-btn">
                            <div class="icon">
                            <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/hoi-dap-bs-01.png" class="icon">
                            </div>
                            <p class="text">Hỏi đáp <br>bác sĩ</p>
                        </a></li>
                        <li><a href="#" class="service-btn">
                            <div class="icon">
                            <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/dv-khan-cap-01.png" class="icon">                            </div>
                            <p class="text">Dịch vụ <br>tại nhà</p>
                        </a></li>
                        <li><a href="#" class="service-btn">
                            <div class="icon">
                            <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/sp-y-te-01.png" class="icon">
                            </div>
                            <p class="text">Sản phẩm <br>y tế</p>
                        </a></li>
                    </ul>
                </div>
            </div>
        </section>

        <section class="search-bar">
            <div class="container">
                <h1>Trải nghiệm khám bệnh hiện đại</h1>
                <span>cùng HEALTH CARE - online service</span>
                <div class="search">
                    <input type="text" placeholder="Tìm triệu chứng, chuyên khoa, tên bác sĩ ...">
                    <button class="btn btn-search" id="search">Tìm kiếm <i class="uil uil-search"></i></button>
                </div>
            </div>
        </section>


        <section class="bac-si-noi-bat">
            <h1>Bác sĩ nổi bật</h1>
            <div class="swiper container doctor-slider">
                <div class="swiper-wrapper doctor">

                    <!-- Bac si 1 -->
                    
                    
<!--                    ----->
                    <a href="#" class="swiper-slide dr-card">
                        <div class="content">
                            <h3 class="doctor-name">Đỗ Thùy Dương</h3>
                            <div class="trinh-do">
                                <i class="uil uil-graduation-cap"></i>
                                <p class="text">Phó giáo sư tiến sĩ</p>
                            </div>
                            <div class="chuyen-khoa">
                                <i class="uil uil-medical-square"></i>
                                <p class="text">Chuyên khoa Tai Mũi Họng</p>
                            </div>
                            <div class="phong-kham">
                                <i class="uil uil-bag"></i>
                                <p class="text">Phòng khám:</p> <p class="dc-phongkham">P.401 Tòa D9</p>
                            </div>
                        </div>
                        <div class="image">
                            <!-- <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/doctor1.jpg" alt=""> -->
                        </div>
                    </a>

                    <!-- Bac si 2 -->
                    <a href="#" class="swiper-slide dr-card">
                        <div class="content">
                            <h3 class="doctor-name">Đặng Hải Mai Linh</h3>
                            <div class="trinh-do">
                                <i class="uil uil-graduation-cap"></i>
                                <p class="text">Phó giáo sư tiến sĩ</p>
                            </div>
                            <div class="chuyen-khoa">
                                <i class="uil uil-medical-square"></i>
                                <p class="text">Chuyên khoa Hô Hấp</p>
                            </div>
                            <div class="phong-kham">
                                <i class="uil uil-bag"></i>
                                <p class="text">Phòng khám:</p> <p class="dc-phongkham">P.402 Tòa D9</p>
                            </div>
                        </div>
                        <div class="image">
                            <!-- <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/doctor1.jpg" alt=""> -->
                        </div>
                    </a>

                    <!-- Bac si 3 -->
                    <a href="#" class="swiper-slide dr-card">
                        <div class="content">
                            <h3 class="doctor-name">Lê Thị Nhung</h3>
                            <div class="trinh-do">
                                <i class="uil uil-graduation-cap"></i>
                                <p class="text">Phó giáo sư tiến sĩ</p>
                            </div>
                            <div class="chuyen-khoa">
                                <i class="uil uil-medical-square"></i>
                                <p class="text">Chuyên khoa Thần Kinh</p>
                            </div>
                            <div class="phong-kham">
                                <i class="uil uil-bag"></i>
                                <p class="text">Phòng khám:</p> <p class="dc-phongkham">P.403 Tòa D9</p>
                            </div>
                        </div>
                        <div class="image">
                            <!-- <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/doctor1.jpg" alt=""> -->
                        </div>
                    </a>

                    <a href="#" class="swiper-slide dr-card">
                        <div class="content">
                            <h3 class="doctor-name">Đinh Minh Ánh</h3>
                            <div class="trinh-do">
                                <i class="uil uil-graduation-cap"></i>
                                <p class="text">Phó giáo sư tiến sĩ</p>
                            </div>
                            <div class="chuyen-khoa">
                                <i class="uil uil-medical-square"></i>
                                <p class="text">Chuyên khoa Da Liễu</p>
                            </div>
                            <div class="phong-kham">
                                <i class="uil uil-bag"></i>
                                <p class="text">Phòng khám:</p> <p class="dc-phongkham">P.404 Tòa D9</p>
                            </div>
                        </div>
                        <div class="image">
                            <!-- <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/doctor1.jpg" alt=""> -->
                        </div>
                    </a>

                    <a href="#" class="swiper-slide dr-card">
                        <div class="content">
                            <h3 class="doctor-name">Phạm Vân Anh</h3>
                            <div class="trinh-do">
                                <i class="uil uil-graduation-cap"></i>
                                <p class="text">Phó giáo sư tiến sĩ</p>
                            </div>
                            <div class="chuyen-khoa">
                                <i class="uil uil-medical-square"></i>
                                <p class="text">Chuyên khoa Nhi</p>
                            </div>
                            <div class="phong-kham">
                                <i class="uil uil-bag"></i>
                                <p class="text">Phòng khám:</p> <p class="dc-phongkham">P.405 Tòa D9</p>
                            </div>
                        </div>
                        <div class="image">
                            <!-- <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/doctor1.jpg" alt=""> -->
                        </div>
                    </a>

                    <a href="#" class="swiper-slide dr-card">
                        <div class="content">
                            <h3 class="doctor-name">Hà Quỳnh Trang</h3>
                            <div class="trinh-do">
                                <i class="uil uil-graduation-cap"></i>
                                <p class="text">Phó giáo sư tiến sĩ</p>
                            </div>
                            <div class="chuyen-khoa">
                                <i class="uil uil-medical-square"></i>
                                <p class="text">Chuyên khoa Sản</p>
                            </div>
                            <div class="phong-kham">
                                <i class="uil uil-bag"></i>
                                <p class="text">Phòng khám:</p> <p class="dc-phongkham">P.406 Tòa D9</p>
                            </div>
                        </div>
                        <div class="image">
                            <!-- <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/doctor1.jpg" alt=""> -->
                        </div>
                    </a>

                </div>
                <div class="swiper-pagination"></div>
                <div class="autoplay-progress">
                    <svg viewBox="0 0 48 48">
                      <circle cx="24" cy="24" r="20"></circle>
                    </svg>
                    <span></span>
                  </div>
            </div>
        </section>

        <section class="sp-y-te">
            <h1>Sản Phẩm Y Tế</h1>
            <span>Chăm sóc sức khỏe và thấu hiểu cơ thể</span>
            <div class="container">
                <a href="#" class="product-btn">
                    <div class="image">
                        <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/vat-tu-y-te.png">
                    </div>
                    <p class="text">Vật tư y tế</p>
                </a>
                <a href="#" class="product-btn">
                    <div class="image">
                    <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/cham-soc-ca-nhan.png" class="icon">
                    </div>
                    <p class="text">Chăm sóc <br>cá nhân</p>
                </a>
                <a href="#" class="product-btn">
                    <div class="image">
                    <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/me%26be.png" class="icon">
                    </div>
                    <p class="text">Mẹ & bé</p>
                </a>
                <a href="#" class="product-btn">
                    <div class="image">
                    <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/thuoc-khong-ke-don.png" class="icon">                            </div>
                    <p class="text">Thuốc không <br>kê đơn</p>
                </a>
                <a href="#" class="product-btn">
                    <div class="image">
                    <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/thuc-pham-chuc-nang.png" class="icon">
                    </div>
                    <p class="text">Sản phẩm <br>chức năng</p>
                </a>
            </div>
        </section>
    </main>

    <!-- Footer -->

    <footer>
        <div class="container">
            <a href="#" class="logo">
                <img src="./assets/ava_v2.png" title="Booking Health Care Web"/>
            </a>
            <div class="contact">
                <div class="location">
                    <p class="text"><i class="uil uil-map-marker"></i>Số 1 Đại Cồ Việt, Bách Khoa, Hai Bà Trưng, Hà Nội</p>
                </div>
                <div class="hotline">
                    <p class="text"><i class="uil uil-phone"></i>1900 0091</p>
                </div>
                <div class="email">
                    <p class="text"><i class="uil uil-envelope"></i>healthy_care@gmail.com</p>
                </div>
            </div>
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

    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

    <script src="./js/homepage.js"></script>
</body>

</html>    