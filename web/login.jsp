<%-- 
    Document   : login
    Created on : Jul 4, 2023, 11:52:21 AM
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
    <title>Health Care - Sign in & Sign up</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"/>

    <!-- CSS Files -->
    <link rel="stylesheet" href="./css/login.css">
    
</head>

<body>

    <main>
        <div class="box">
          <div class="inner-box">
            <div class="forms-wrap">
                <form action="login" method="post" autocomplete="off" class="sign-in-form">
                    <div class="logo">
                        <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava_v2.png" alt="">
                    </div>

                    <div class="heading">
                        <h2>Chào mừng bạn trở lại</h2>
                        <h6>Bạn chưa đăng ký ?</h6>
                        <a href="#" class="toggle">Đăng ký</a>
                    </div>

                    <div class="info-form">
                        <div class="input-wrap">
                            <input type="text" name="username" minlength="4" class="input-field" autocomplete="off" required>
                            <label for="">Tên đăng nhập</label>
                        </div>

                        <div class="input-wrap">
                            <input type="password" name="password" minlength="4" class="input-field" autocomplete="off" required>
                            <label for="">Mật khẩu</label>
                        </div>
                        <%
                        if(request.getAttribute("error")!=null){
                        String c = ( String)request.getAttribute("error"); 
                        %>
                        <div class="heading">
                            <h3><%=c%> </h3>
                        </div>
                        <%
                        }
                        %>
                        <input type="submit" value="Đăng nhập" class="sign-btn btn">
                        <a href="" class="text">Quên mật khẩu</a>
                    </div>
                </form>
                <form action="register" method="post" autocomplete="off" class="sign-up-form">
                    <div class="logo">
                        <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava_v2.png" alt="">
                    </div>

                    <div class="heading">
                        <h2>Bắt đầu</h2>
                        <h6>Bạn đã có tài khoản ?</h6>
                        <a href="#" class="toggle">Đăng nhập</a>
                    </div>

                    <div class="info-form">
                        <div class="input-wrap">
                            <input type="text" name="REusername" minlength="4" class="input-field" autocomplete="on" required>
                            <label for="">Tên đăng nhập</label>
                        </div>

                        <div class="input-wrap">
                            <input type="tel" name="phone" minlength="4" class="input-field" autocomplete="off" required>
                            <label for="">Số điện thoại</label>
                        </div>

                        <div class="input-wrap">
                            <input type="password" name="REpassword" minlength="4" class="input-field" autocomplete="off" required>
                            <label for="">Mật khẩu</label>
                        </div>

                        <input type="submit" value="Đăng kí" class="sign-btn btn">
                </form>
            </div>
  
            <div class="block">
            </div>
          </div>
        </div>
      </main>

    <!-- JavaScript Files -->

    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

    <script src="./js/login.js"></script>
</body>

</html>    

