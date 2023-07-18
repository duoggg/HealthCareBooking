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
       
        <%
            if(request.getAttribute("bacsi")!= null){
            BacSi i =(BacSi)request.getAttribute("bacsi");
            
            %>
           <section class="account-form"> 
        <form action ="uddoc" method ="post" width = "90%">
            
                 <h1>Cập nhật lại thông tin lại thông tin Bác Sĩ</h1>
       
        <div class="wrapper">
             <p class="placeholder"> ID  </p>  <input type = "text" readonly name ="id" value = "<%= i.getIDBacSi()%>" class="box"/><br/>
            <p class="placeholder">Họ và tên</p>  <input type = "text" name ="name" value = "<%= i.getHoten()%>" class="box"/><br/> 
           <p class="placeholder">Password</p>  <input type = "text" name ="pass" value = "<%= i.getPassword()%>" class="box" /><br/> 
           <p class="placeholder"> Mã khoa  </p>  <input type = "number" name ="special" value = "<%= i.getIDKhoa()%>" class="box"/><br/> 
            <p class="placeholder">Năm sinh</p> <input type = "number" name ="year" value = "<%= i.getNamSinh()%>" class="box"/><br/> 
           <p class="placeholder"> Phòng Khám </p> <input type = "text" name ="room" value = "<%= i.getPhongKham()%>" class="box"/><br/> 
           <p class="placeholder">Số điện thoại</p> <input type = "number" name ="sdt" value = "<%= i.getSDT()%>" class="box"/><br/> 
            <p class="placeholder">Email</p>  <input type = "text" name ="email" value = "<%= i.getEmail()%>" class="box"/><br/> 
             <p class="placeholder">Link ảnh</p>  <input type = "text" name ="link" value = "<%= i.getLink()%>" class="box"/><br/> 
            <input type="submit" value="Xác nhận" name="submit" class="btn">
            </div>
        </form>
            <%
            }
            %>
</section>

<!-- custom js file link  -->

<script src="./js/update.js"></script>

           
    </body>
</html>
