<%-- 
    Document   : history
    Created on : Jul 10, 2023, 4:43:54 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.BacSi"%>
<%@page import = "dal.ShowBS"%>
<%@page import = "dal.BenhNhanDao"%>
<%@page import = "model.BenhNhan"%>
<%@page import = "model.LichDat"%>
<%@page import = "dal.LichDatDao"%>
<%@page import = "dal.LichLamViecDao"%>
<%@page import = "model.LichLamViec"%>
<%@page import = "java.util.List"%>

<%@page import = "java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava.png" type="assets/x-icon" />
    <title>Đặt khám chuyên khoa qua Health Care - online service</title>
    <!-- CSS Files -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link rel="stylesheet" href="./css/history.css">
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
                <img src="https://raw.githubusercontent.com/JosephD0310/Web_Booking_care/main/assets/ava_v2.png" title="Booking Health Care Web"/>
            </a>
            <div class="links">
                <ul>
                    <li>
                        <a href="homepage.jsp" class="nav-link">Trang Chủ</a>
                    </li>
                    <li>
                        <a href="#" class="nav-link">Đặt khám</a>
                    </li>
                    <li>
                        <a href="#" class="nav-link">Hồ sơ sức khỏe</a>
                    </li>
                    <li>
                        <a href="#" class="nav-link">Hỏi đáp bác sĩ</a>
                    </li>
                    
                </ul>
            </div>
        </nav>
    </header>

    <main>
        <section class="showcase-area">
            <sub-section class="search-bar">
                <div class="container">
                    <h1>Đặt khám trước qua Health Care - online service</h1>
                    <p class="text">Để được đón tiếp ưu tiên tại bệnh viện và được tư vấn với bác sĩ giỏi</p>
                    <div class="search">
                        <i class="uil uil-search"></i>
                        <input type="text" placeholder="Tên dịch vụ, mô tả dịch vụ">
                    </div>
                </div>
            </sub-section>
            <sub-section class="service">
                <div class="container">
                    <div class="service-header">
                        <h2 >Lịch sử đặt khám </h2>
                        <div class="filter">                         
                        </div>
                    </div>
                    <div class="service-list">
                       
                        
                         <%  LichDatDao d = new LichDatDao();
                               String id = (String)session.getAttribute("myAccount");
                               List<LichDat> ld =  d.getLichDatByIDBenhNhan(id);
                               
              
                %>

                        <%
                           if(ld.size()==0){
                           out.println("<div class=\"service-card\">Không có lịch đặt nào của!</div>");
                           }
                           
                           for(int i =0;i<ld.size();i++){
                           
                           LichDat p1 = ld.get(i);
                           LichLamViecDao q = new LichLamViecDao ();
                           LichLamViec llv = q.getLichLamViecWithID(p1.getIDLich());
                           ShowBS c = new ShowBS();
                           BacSi bs = c.getBacSiWithIDLich(p1.getIDLich());
                                 
                           
                           String tenKhoa = c.getKhoaByIdBacSi(bs.getIDBacSi());
                           
                          %>
                        
                        <a class="service-card">
                            <div class="service-image">
                                <img src="<%=bs.getLink()%>" alt="">
                            </div>
                            <div class="service-info">
                                <h3><p class="name"><%=bs.getHoten()%></p></h3>
                                <p class="hour"><%=llv.getIDCa()%></p>
                                <p class="date"><%=llv.getNgay()%></p>
                                <p class="khoa"><%=tenKhoa%></p>
                                <p class="cost">P.<%=bs.getPhongKham()%></p>
                            </div>
<!--                            <button name="chose"> Đã duyệt </button>-->
                            <!-- <select class="select-css">
                                <option>Đã hủy</option>
                                <option>Đang chờ</option>
                                <option>Đã duyệt</option>
                                
                            </select> -->
                            
                        </a>
                         <%
                        }
                        %>
                        
                        

                        </div>
                    
                    </div>
                </div>
            </sub-section>
            <!-- <sub-section class="pagination">
                <div class="container">
                    <button class="btn" onclick="backBtn()"> <i class="uil uil-angle-left-b"></i> prev</button>
                    <ul>
                        <li class="list-link active" value="1" onclick="activeLink()">1</li>
                        <li class="list-link" value="2" onclick="activeLink()">2</li>
                        <li class="list-link" value="3" onclick="activeLink()">3</li>
                        <li class="list-link" value="4" onclick="activeLink()">4</li>
                        <li class="list-link" value="5" onclick="activeLink()">5</li>
                    </ul>
                    <button class="btn" onclick="nextBtn()">next <i class="uil uil-angle-right-b"></i></button>
                </div>
            </sub-section>
        </section> -->
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

    <script src="./js/history.js"></script>
</body>

</html>    
