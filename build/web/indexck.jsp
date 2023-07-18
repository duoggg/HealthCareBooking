<%-- 
    Document   : indexck
    Created on : Jul 10, 2023, 10:41:13 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.DichVu"%>
<%@page import = "dal.DichVuDao"%>
<%@page import = "java.util.List"%>


<%@page import = "java.util.ArrayList"%>

<%@page import = "dal.BenhNhanDao"%>
<%@page import = "model.BenhNhan"%>

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
    <link rel="stylesheet" href="./css/chuyenkhoa.css">
</head>

<body>
    <header>
        <nav class="info">
            <ul>
                <li>
                    <i class="uil uil-phone"></i> Hotline đặt khám : 
                </li>
                <li>
                    <a href="#" class="login">Đăng nhập</a> | <a href="#" class="login">Đăng ký</a>
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
                        <a href="idlisdoc" class="nav-link">Đặt khám</a>
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
                    <form id="myForm" name="fff" action="searchser" method="post">
                    <div class="search">
                        <i class="uil uil-search"></i>
                        <input type="text" name="sername" placeholder="Tên dịch vụ, mô tả dịch vụ">
                    </div>
                          </form>
                </div>
            </sub-section>
            <sub-section class="service">
                <div class="container">
                    <div class="service-header">
                        <h2>Chọn dịch vụ đặt khám</h2>
                        <div class="filter">                         
                        </div>
                    </div>
                    <div class="service-list">
                         <%  
                                DichVuDao d = new DichVuDao();
                                 List<DichVu> bs = d.getAll();
                                 int p =   (int)request.getAttribute("page");
                                 int num = (int)request.getAttribute("num");
                                 
                                 if(request.getAttribute("service")!=null){
                                    bs= (List<DichVu>)request.getAttribute("service");
                                }
                                 

                                
                %>
                 <%
                           if(bs.size()==0){
                           out.println("<div class=\"dr-filter\"> Không tìm thấy  </div>");
                           }
                           
                           for(int i =0;i<4&&i<bs.size();i++){
                           
                           DichVu p1 = bs.get(i);
                           DichVuDao sbs = new DichVuDao();
                            int id = p1.getIDService();
                            String strid = Integer.toString(id);
                          String tenKhoa = sbs.getKhoaByIdDichVu(id);
                           
                          %>
                          
                      
                          <a href="datser?id=<%=strid%>" class="service-card">
                            <div class="service-image">
                                <img src="<%=p1.getLink()%>" alt="">
                            </div>
                            <div class="service-info">
                                <h3><p class="name"><%=p1.getTen()%></p></h3>
                                <p class="khoa"><%=tenKhoa%></p>
                                <p class="cost">Giá khám : <span><%=p1.getGiaKham()%>.000đ</span></p>
                                
                            </div>
                            <i class="uil uil-arrow-right"></i>
                        </a>
                              
                            
                            <%
                                }
                    %>
                        
                        
                       

                       
                        </div>
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
                            <a  href="idlisser?page=<%=i%>">
                                <li class="list-link active" value="<%=i%>" onclick="activeLink()"><%=i%></li>
                            </a>
                            <%
                                }
                            %>
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

    <script src="./js/chuyenkhoa.js"></script>
     <script>
    document.addEventListener("keydown", function(event) {
  if (event.keyCode === 13) {
    event.preventDefault(); // Ngăn chặn hành vi mặc định của phím Enter (như xuống dòng trong textarea)
    document.getElementById("myForm").submit(); // Thay "myForm" bằng ID của form bạn muốn submit
  }
  
  
});
</script>
</body>

</html>    
