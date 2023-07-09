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
   <script type="text/javascript">
    function buy(id,i){
        var form = document.getElementById("f"+i);
        form.action ="dat?id="+id;
        form.submit();
    }
    
</script>
    <!-- CSS Files -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link rel="stylesheet" href="./css/style-DR.css">
</head>

<body>
    <header>
        <nav class="info">
            <ul>
                <li>
                    <i class="uil uil-phone"></i> Hotline đặt khám : 
                </li>
                <li>
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
                        <a href="<% if(session.getAttribute("myAccount")!=null) {%>info.jsp<%}%>" class="nav-link">Hồ sơ sức khỏe</a>
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
                           out.println("<div class=\"dr-filter\"> Không tìm thấy  </div>");
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
                                    <a href="#" class="btn secondary-btn">
                                         Đặt khám
                                     <input type="submit" onclick="buy('<%=id%>','<%=i%>')" value="Đặt khám"/>
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

    <script src="./js/app-DR.js"></script>
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

 
