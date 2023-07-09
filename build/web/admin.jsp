<%@page import = "java.util.List"%>
<%@page import = "model.BenhNhan"%>
<%@page import = "model.LichDat"%>
<%@page import = "dal.BenhNhanDao"%>
<%@page import = "dal.LichDatDao"%>
<%@page import = "model.BacSi"%>
<%@page import = "dal.ShowBS"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./assets/ava.png" type="assets/x-icon" />
     <script type = "text/javascript">
            function doDeletebn(id){
                if(confirm("are you sure to delete Doctor with id ="+id+"?")){
                    window.location= "delpa?id="+id; 
                }
                }
             function doDeletebs(id){
                if(confirm("are you sure to delete Doctor with id ="+id+"?")){
                    window.location= "deldoc?id="+id; 
                }
            }
            function doDeleteld(idlich,idbn,date){
                if(confirm("are you sure to delete Doctor with id ="+id+"?")){
                    window.location= "dellich?idlich="+idlich+"&idpa="+idbn +"&Ngay=" + date; 
                }
            }
            function notlogout(){
               
            }
            </script>
         <style>
            table{
            border-collapse: collapse;
            
            }
            .pagination{
                display: inline-block;
            }
            .pagination a{
                color: black;
                font-size: 22px;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }
            .pagination a.active{
                background-color: blue;
                color: white;
            }
            .pagination a:hover:not(.active){
                background-color: chocolate;
            }
            
            .topnav {
    overflow: hidden;
    background-color: #6f6d6d;
  }
  .topnav input[type=text] {
    float: right;
    padding: 6px;
    margin-top: 8px;
    margin-right: 10px;
    margin-bottom: 10px;
    border: none;
    font-size: 17px;
    border-radius: 10px;
  }
 
        </style>
    <title>PGS.TS Đỗ Thùy Dương</title>
    <!-- CSS Files -->
    <link rel="stylesheet" href="./css/admin1.css">
</head>

<body>
    <!-- ========navigation=============== -->

    <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a class="first">
                        <span class="icon">
                            <ion-icon name="people-outline"></ion-icon>
                        </span>
                        <span class="title">Admin Healthcare</span>
                    </a>
                    <a class="second">
                        <span class="icon">
                            <ion-icon name="list-circle-outline"></ion-icon>
                        </span>
                        <span class="title">Các chức năng</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Trang chủ</span>
                    </a>
                </li>
                <li>
                    <a href="#" onclick="show_dr()">
                        <span class="icon">
                            <ion-icon name="list-outline"></ion-icon>
                        </span>
                        <span class="title">Danh sách bác sĩ </span>
                    </a>
                </li>
                <li>
                    <a href="#" onclick="show_bn()">
                        <span class="icon">
                            <ion-icon name="list-outline"></ion-icon>
                        </span>
                        <span class="title">Danh sách bệnh nhân</span>
                    </a>
                </li>
                <li>
                    <a href="#" onclick="show_kham()">
                        <span class="icon">
                            <ion-icon name="calendar-outline"></ion-icon>
                        </span>
                        <span class="title">Lịch đặt khám</span>
                    </a>
                </li>
                <li>
                    <a href="#" onclick="show_lam()">
                        <span class="icon">
                            <ion-icon name="calendar-outline"></ion-icon>
                        </span>
                        <span class="title">Lịch làm việc </span>
                    </a>
                </li>
                <li>
                    <a href="#" onclick="show_log()">
                        <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                        <span class="title">Đăng xuất</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
<div class="main">
   <div class="topbar">
        <div class="toggle">
            <ion-icon name="menu-outline"></ion-icon>
        </div>
        <div class="infor">
            <a class="hline">Hotline đặt khám: 012345678</a>
        </div>
        <!-- <div class="ima">
            <img src="./ava_v1.png" alt="">
        </div> -->
   </div>
    
    <div class="listbn" id="log" style="display: none;" >
    <div class="wrapper" >
        
        <form action="" method="logout" id="form-login">
            <h1 class="form-heading">Đăng xuất</h1>
            <a href="logout" class="form-submit">Có</a>
<!--            <input type="submit" onclick="logout()" value="Có" class="form-submit">-->
       

        <a href="#" class="form-submit">  Không </a>
<!--        <input type="submit"  value="Không " class="form-submit">-->
<!--<a href="#" class="form-submit"><span>Kh</span> </a>-->
            
        </form>
    </div>
    </div>

    
     <%  
                 int t2 =(int) request.getAttribute("turn2");
                
               
                int p2 =   (int)request.getAttribute("page2");
                int num2 = (int)request.getAttribute("num2");
//                if(request.getAttribute("turn")=="Myfirst")
                if(t2==0){
                
         
        %>
    
    
    <div class="listbn" id="listbn" style="display: none;">
    
        <% }
            else{


            %>
      <div class="listbn" id="listbn" style="display: block;" >
        <%
                    }
            %>
     <div class="topnav">
        <input type="text" placeholder="Tìm kiếm..."/>
      </div>    
    <h1>Danh sách bệnh nhân đã đăng kí lịch khám bệnh </h1>
   </br>
  <h3><a  href ="#">Add new</a> </h3>
    <div class="pagination">
            <%
                for(int i =1;i<=num2;i++){
                %>
                <a href="lispa?page=<%=i%>"><%=i%></a>
                <%
                    }
                %>
            
        </div>
      
       
    <table class="list_tb " border ="1px" width = "90%">
        <tr>
            <th>ID_bn</th>
            <th>Họ Và Tên</th>
            <th>Username</th>
            <th>Password </th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Giới tính</th>
            <th>Thao tác </th>
        </tr>
        </tr>
           <%
                //List<Category> list = (List<Category>) request.getAttribute("data");
              List<BenhNhan> list2 = (List<BenhNhan>) request.getAttribute("data2");
                for(BenhNhan i:list2){
                    String id = i.getIDBenhNhan();
               
                
             %>
             
             <tr>
                 <td><%= i.getIDBenhNhan()%></td>
                 <td><%= i.getHoten()%></td>
                 <td><%= i.getUsername()%></td>
                 <td><%= i.getPassword()%></td>
                 
                 <td><%= i.getNamSinh()%></td>
                 <td><%= i.getDiaChi()%></td>
                 <td><%= i.getSDT()%></td>
                 <td><%= i.getEmail()%></td>
                 <td><%= i.getGioiTinh()%></td>
                 <td>
                     <a href="#" onclick="doDeletebn('<%= id %>')">Delete</a>
                     <a href="udpa?id=<%=id%>">Update</a>
                 </td>
                
                 
             </tr>
                
                <%
                    }
                    %>
    </table>


<%if(t2==0) {%>
            </div>
 <%
                    } 
else{
                    %>
               </div>     
<%
                    } 
%>
<!----------------BACSI------------------->
     <%  
                 int t =(int) request.getAttribute("turn");
                
               
                int p =   (int)request.getAttribute("page");
                int num = (int)request.getAttribute("num");
//                if(request.getAttribute("turn")=="Myfirst")
                if(t==0){
                
         
        %>
    <div class="listdoctor" id="listdoctor" style="display: none ;">
    
        <% }
            else{


            %>
       <div class="listdoctor" id="listdoctor" style="display: block ;">     
            <%
                    }
            %>
            <div class="topnav">
        <input type="text" placeholder="Tìm kiếm..."/>
      </div>
    <h1>Danh sách các bác sĩ của bệnh viện </h1>
</br>
<h3><a  href ="#">Add new</a> </h3>
    
    
      
        <div class="pagination"  >
            <%
                for(int i =1;i<=num;i++){
                %>
                <a href="lisdoc?page=<%=i%>"><%=i%></a>
                <%
                    }
                %>
            
        </div>
    <table class="list_tb" >
        <tr>
            <th>ID bác sĩ </th>
            <th>Họ Và Tên</th>
<!--            <th>Password</th>-->
            <th>Khoa</th>
            <th>Ngày Sinh</th>
            <th>Phòng khám</th>
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Ảnh</th>
            <th>  Thao Tác  </th>
            
        </tr>
      
        <%
                //List<Category> list = (List<Category>) request.getAttribute("data");
              List<BacSi> list = (List<BacSi>) request.getAttribute("data");
                for(BacSi i:list){
                    String id = i.getIDBacSi();
               
                
             %>
             
             <tr>
                 <td><%= i.getIDBacSi()%></td>
                 <td><%= i.getHoten()%></td>
                 
                 <td><%= i.getIDKhoa()%></td>
                 
                 <td><%= i.getNamSinh()%></td>
                 <td><%= i.getPhongKham()%></td>
                 <td><%= i.getSDT()%></td>
                 <td><%= i.getEmail()%></td>
                 <td><a href=<%= i.getLink()%>> Ảnh </a></td>
                
                 <td>
                     <a href="#" onclick="doDeletebs('<%=id%>')">Delete</a>
                     <a href="uddoc?id=<%=id%>">Update</a>
                 </td>
                
                 
             </tr>
                
                <%
                    } 
                    %>
        </table>

<% if(t==0) {%>
            </div>
 <%
                    } 
else{
                    %>
               </div>     
<%
                    } 
%>
<!--   ---------------------------  LICHDAT   ---------------------------     -->
         <%  
                 int t3 =(int) request.getAttribute("turn3");
                
               
                int p3 =   (int)request.getAttribute("page3");
                int num3 = (int)request.getAttribute("num3");
//                if(request.getAttribute("turn")=="Myfirst")
                if(t3==0){
                
         
        %>
   <div class="lich_kham" id="lich_kham" style="display: none;" >
    
        <% }
            else{


            %>
       <div class="lich_kham" id="lich_kham" style="display: block;" >    
            <%
                    }
            %>
        
        
        <div class="topnav">
        <input type="text" placeholder="Tìm kiếm..."/>
      </div>

    <h1>Lịch khám đã được đăng kí </h1>
   </br>
   <h3><a  href ="#">Add new</a> </h3>
    
    
      
        <div class="pagination"  >
            <%
                for(int i =1;i<=num3;i++){
                %>
                <a href="lislichdat?page=<%=i%>"><%=i%></a>
                <%
                    }
                %>
            
        </div>
                
    <table class="lichkham" width = "90%">
        <tr>
            <th>ID Lịch</th>
            <th>ID Bệnh Nhân</th>
            <th>ID Ngày </th>
<!--           <th>Trạng thái </th>-->
        </tr>
       
        <%
                //List<Category> list = (List<Category>) request.getAttribute("data");
              List<LichDat> list3 = (List<LichDat>) request.getAttribute("data3");
                for(LichDat i:list3){
//                    String id = i.getIDLich();
               
                
             %>
             
             <tr>
                 <td><%= i.getIDLich()%></td>
                 <td><%= i.getIDBenhNhan()%></td>
                 
                 <td><%= i.getNgay()%></td>
                 
                 
                 
                
                 <td>
                     <a href="#" onclick="doDeleteld('<%= i.getIDLich()%>','<%= i.getIDBenhNhan()%>','<%= i.getNgay()%>')">Delete</a>
<!--                     <a href="uddoc?id=<=id%>">Update</a>-->
                 </td>
                
                 
             </tr>
                
                <%
                    } 
                    %>
        </table>

 <%if(t3==0) {%>
            </div>
 <%
                    } 
else{
                    %>
               </div>     
<%
                    } 
%>
       
        
         <div class="lich_lam" id="lich_lam" style="display: none;" >
        <div class="topnav">
            <input type="text" placeholder="Tìm kiếm..."/>
          </div>
             
             
        <h1>Lịch làm việc </h1>
       </br>
      <div class="wraper">
        <table class="lichkham" >
            <tr>
                <th>Ngày làm việc </th>
                <th>Số lượng Max</th>
                <th>Số lượng</th>
                <th>ID bác sĩ </th>
                <th>ID lịch</th>
                <th>ID ca</th>
               
               
            </tr>
            <tr>
                <td>14-09-2023</td>
                <td>20</td>
                <td>10</td>
                <td>BS01</td>
                <td>Lich_dk1</td>
                <td>Ca_01</td>

            </tr>
             </table>
            </div>
       </div>
       



</div>



    <script src="./js/admin.js"></script>
    <!-- ======icon========== -->
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>

</html>     