<%-- 
    Document   : indexbooking
    Created on : Jul 3, 2023, 8:29:44 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <link rel="icon" href="./assets/ava.png" type="assets/x-icon" />
   
    <title>Doctor Profile</title>
<script type="text/javascript">
    function activeShift(ca,id){
    for(s of shift){
        s.classList.remove("active");
    };
    event.target.classList.add("active");
    current_shift = event.target.value;
   document.f.action="transferdat?ca="+ca;
   document.f.action+="&id="+id;
    service_label.textContent = "Khám theo yêu cầu chuyên khoa Tai - Mũi - Họng";
    service_price.textContent = "500.000 đ";
    serviceInfo.style.display = "block";
    
    
}
 
</script>

   
    <!-- CSS Files -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link rel="stylesheet" href="./css/style-infoDR.css">
   
  
</head>

<body>
    <header>
        <nav class="info">
            <ul>
                <li>
                    <i class="uil uil-phone"></i> Hotline đặt khám : 
                </li>
                <li id="login" >
                <% 
                    
                    if (session.getAttribute("myAccount") == null){
                    
                    out.println(" <a href=\"login.jsp\" class=\"login\">Đăng nhập</a> | <a href=\"info.jsp\" class=\"login\">Đăng ký</a>");
                    }
                    else{
                         String idpa = (String)session.getAttribute("myAccount");
                         BenhNhanDao c = new BenhNhanDao();
                         BenhNhan bn = c.getBenhNhanById(idpa);
                        out.println("<a href=\"info.jsp\" class=\"login\">Xin Chào "+bn.getUsername() + " !</a>");
                    }
                    
                    %>
                    
<!--                    <a href="login.jsp" class="login">Đăng nhập</a> | <a href="info.jsp" class="login">Đăng ký</a>-->
                </li>
            </ul>
        </nav>
        <nav class="container">
            <a href="#" class="logo">
                <img src="./assets/ava_v2.png" title="Booking Health Care Web"/>    
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
        <section class="showcase-area">
               <%
            if(request.getAttribute("doctor")!= null){
            BacSi i =(BacSi)request.getAttribute("doctor");
            String id = i.getIDBacSi();
            %>
            <div class="container">
                 <style>
                    .dr-image .image{
                        background: url(<%=i.getLink()%>) no-repeat center / cover;
           }
                </style>
                <div class="dr-image">
                    <div class="image"></div>
                </div>
                <div class="dr-info">
                  
                    <h2 class="dr-name"><%= i.getHoten()%></h2>
                
                    <div class="hospital">
                        <p class="hospital-name"> <i class="uil uil-map-marker"></i> Bệnh viện Zương Zương</p>
                        <p class="text">Số 1 Đại Cồ Việt, Hai Bà Trưng, Hà Nội</p>
                    </div>
                    <div class="phong-kham">
                        <div class="text"><i class="uil uil-user-location"></i> Phòng khám: </div>
                        <p class="dc-phongkham">P<%=i.getPhongKham()%></p>
                    </div>
                    <div class="email-box">
                        <div class="text"><i class="uil uil-envelope"></i> Email: </div>
                        <p class="email"><%=i.getEmail()%></p>
                    </div>
                    <div class="sdt-box">
                        <div class="text"><i class="uil uil-phone-alt"></i> Số điện thoại: </div>
                        <p class="sdt"><%=i.getSDT()%></p>
                    </div>
                    <div class="chuyen-khoa">
                        <p class="khoa">Chuyên khoa Tai Mũi Họng</p>
                    </div>
                    <p class="cost">Giá khám : <span>500.000đ</span></p>
                    <div class="opt">
                        <a href="#booking" class="btn">Đặt lịch ngay <i class="uil uil-arrow-circle-right"></i></a>
                        <a href="#info-dr" class="btn secondary-btn">Thông tin</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="booking" id="booking">
            <div class="container">
                <div class="head">
                    <div class="icon-schedule">
                        <i class="uil uil-schedule"></i>
                        <div class="head-text open">GIỜ LÀM VIỆC</div>
                    </div>
                    <div class="open-time">
                        <div class="head-text">Thứ Hai - Thứ Sáu</div>
                        <i class="uil uil-clock-nine"></i>
                        <div class="head-text">8:00 - 16:00</div>
                    </div>
                </div>
                <div class="schedule">
                    <div class="text">Lịch khám tại viện:</div>
                    
                    
                    
                    <form name="f" action ="" method ="post" width = "90%">   
                    <div class="schedule-box">
                        <div class="selected-date">
                            <input type="date" id="date" name="date"  >
                        </div>
                       
                        <div class="shift-opt">
                            
                            <input class="shift"  onclick="activeShift(1,'<%=id%>')"   value="08:00 - 09:00" readonly/>
                            <input class="shift" onclick="activeShift(2,'<%=id%>')"  value="09:00 - 10:00" readonly/>
                            <input class="shift" onclick="activeShift(3,'<%=id%>')"  value="10:00 - 11:00" readonly/>
                            <input class="shift" onclick="activeShift(4,'<%=id%>')"  value="14:00 - 15:00" readonly/>
                            <input class="shift" onclick="activeShift(5,'<%=id%>')"  value="15:00 - 16:00" readonly/>
                        </div>
                    </div>
                    </div>
                    <div class="container-service" id="serviceInfo" style="display: none;">
                        <div class="service-icon"><i class="uil uil-check-circle"></i> Thông tin dịch vụ</div>
                        <div class="service-text">
                            <span id="service-label"></span>
                            <span id="service-price"></span>
                        </div>
                        <button class="submit" type="submit">
                            <div class="submit-icon"><i class="uil uil-stethoscope-alt"></i></div>
                            <div class="submit-text" onclick="">Đặt khám <br> <span>Tại cơ sở y tế</span></div> 
                        </button>
                    </div>
                    </form>
                </div>
            </div>
        </section>
                             <%
            }
            
            %>
        <section class="info-dr" id="info-dr">
            <div class="container">
                <h3>KINH NGHIỆM KHÁM CHỮA BỆNH</h3>
            <div class="duty">Trưởng Khoa Tai - Mũi - Họng Bệnh viện Zương Zương</div>
            <div class="pros">Thế mạnh chuyên môn:
                <ul>
                    <li>Chữa các bệnh vùng Tai- Mũi - Hong: viêm tai, viêm mũi xoang, viêm họng, viêm loét họng, miệng, tăng tiết nước bọt vùng khoang miệng... bệnh lý các khối u vùng đầu mặt cổ</li>
                    <li>Chuyên gia về trị liệu giọng nói cho những người làm các nghề liên quan đến giọng như phát thanh viên, ca sĩ, giáo viên...</li>
                    <li>Các rối loạn giọng sau phẫu thuật</li>
                    <li>Chuyên gia điều trị chóng mặt, rối loạn thăng bằng, ù tai</li>
                    <li>Điều trị các đau mạn tính vùng sọ mặt, vùng lưỡi</li>
                </ul>
            </div>
            </div>
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

    <script src="./js/app-infoDR.js"></script>
    <script type="text/javascript">
//        if(==0){
//        document.getElementById("login").innerHTML =  "<a href=\"login.jsp\" class=\"login\">Đăng nhập</a> | <a href=\"info.jsp\" class=\"login\">Đăng ký</a>" ;
// }
</script>
</body>

</html>    
