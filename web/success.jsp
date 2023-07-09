<%-- 
    Document   : success
    Created on : Jul 10, 2023, 1:32:47 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="icon" href="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava.png" type="assets/x-icon" />
    <title>Hỏi đáp miễn phí với Bác sĩ</title>
    <!-- CSS Files -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link rel="stylesheet" href="./css/success.css">
    
    <body>
</head>
  <header>
    <nav class="info">
        <div class="container">
            <div class="hotline"><i class="uil uil-phone"></i> Hotline đặt khám : </div>
            <div class="profile-tab">
                <span class="username">Đỗ Thùy Dương</span>
                <div class="user-ava">
                    <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava-users.png">
                </div>
                <i class="uil uil-angle-down"></i>
            </div>
        </div>
    </nav>
        <nav class="container">
            <a href="#" class="logo">
                <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava_v2.png" title="Booking Health Care Web"/>
            </a>
            <div class="links">
              <ul>
                  <li>
                      <a href="#" class="nav-link">Đặt khám</a>
                  </li>
                  <li>
                      <a href="#" class="nav-link">Hồ sơ sức khỏe</a>
                  </li>
                  <li>
                      <a href="#" class="nav-link">Hỏi đáp bác sĩ</a>
                  </li>
                  <li>
                      <a href="#" class="nav-link">Dịch vụ khẩn cấp</a>
                  </li>
              </ul>
          </div> 
        </nav>
        </header>
<main>
  

    <div class="center-container">
        <figure class="image-container">
        <img src="https://cdn.fbsbx.com/v/t59.2708-21/354837705_953811749226712_1218998149791898083_n.gif?_nc_cat=110&ccb=1-7&_nc_sid=041f46&_nc_ohc=3SES_GEpzw8AX8nwBcH&_nc_ht=cdn.fbsbx.com&oh=03_AdSNZNexBv3S8ZrXc1Sf0aR-ao5GObEERjXZs_s08D5tFQ&oe=64AC8B51" alt="anh">
        <p>Đăng ký thành công !</p>
      
  <div class ="button-container">
    <a href="homepage.jsp"><button class="trang-button" onclick="redirectToHomePage()">Về trang chủ</button></a>
    <button class="kham-button" onclick="redirectToOtherPage()">Xem lịch khám </button>
    </div>
 </figure>
 </div>
</main>

<footer>
  <div class="container">
      <a href="#" class="logo">
          <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava_v2.png" title="Booking Health Care Web"/>
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
<script src="./js/success.js"></script>
</body>
</html>
