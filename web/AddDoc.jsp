<%-- 
    Document   : Update
    Created on : Apr 10, 2023, 12:30:47 AM
    Author     : DELL
--%>
<%@page import = "model.BacSi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en-US">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Update </title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="./css/update.css">

</head>
<body>
       
       
           <section class="account-form"> 
        <form action ="adddoc" method ="post" width = "90%">
            
                 <h1>Thêm thông tin lại thông tin Bác Sĩ</h1>
       
        <div class="wrapper">
            
            <p class="placeholder">Họ và tên</p>  <input type = "text" name ="name" placeholder="Nhập họ và tên" class="box"/><br/> 
           <!--<p class="placeholder">Password</p>  <input type = "text" name ="pass" placeholder="Nhập họ và tên" class="box" /><br/>--> 
           <p class="placeholder"> Mã khoa  </p>  <input type = "number" name ="special" placeholder="Nhập khoa" class="box"/><br/> 
            <p class="placeholder">Năm sinh</p> <input type = "number" name ="year" placeholder="Nhập năm sinh" class="box"/><br/> 
           <p class="placeholder"> Phòng Khám </p> <input type = "text" name ="room" placeholder="Nhập họ phòng khám" class="box"/><br/> 
           <p class="placeholder">Số điện thoại</p> <input type = "number" name ="sdt" placeholder="Nhập SDT" class="box"/><br/> 
           <p class="placeholder">Password</p>  <input type = "text" name ="pass" placeholder="Nhập Password" class="box" /><br/> 
            <p class="placeholder">Email</p>  <input type = "text" name ="email" placeholder="Nhập email" class="box"/><br/> 
             <p class="placeholder">Link ảnh</p>  <input type = "text" name ="link" placeholder="Nhập link ảnh" class="box"/><br/> 
             <%
                 if( request.getParameter("erroradddoc")!=null){
            String error = (String)request.getParameter("erroradddoc");
           
        
                %>
                </br><!-- comment -->
                                </br><!-- comment -->
                </br><!-- comment -->
                </br><!-- comment -->

                <h2><%=error%></h2>
                </br><!-- comment -->
                                </br><!-- comment -->
             <%   }
                 %>
            
            <input type="submit" value="Thêm" name="submit" class="btn">
            </div>
        </form>
           
</section>

<!-- custom js file link  -->

<script src="./js/update.js"></script>

           
    </body>
</html>
