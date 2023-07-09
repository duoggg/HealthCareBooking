<%-- 
    Document   : login
    Created on : Jul 4, 2023, 11:52:21 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./reset.css">
    <link rel="stylesheet" href="./css/login.css">
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
    <title>Dang ki lich kham benh </title>
</head>

<body>
   
    <div id="wrapper">
        <form action="login" id="form-login" method="post">
            <h1 class="form-heading">Đăng nhập để đặt lịch</h1>
            
            
            <div class="form-group">
                <i class="far fa-user"></i>
                <input type="text" name="username" class="form-input" placeholder="Tên đăng nhập" required>
            </div>
            <div class="form-group">
                <i class="fas fa-key"></i>
                <input type="text" name="password" class="form-input" placeholder="Mật khẩu" required>
                <div id="eye">
                    <i class="far fa-eye"></i>
                </div>
            </div>
            <%
                if(request.getAttribute("error")!=null){
                String c = ( String)request.getAttribute("error"); 
                %>
                <h3 class="form-heading"><%=c%></h3>
             <%   }
                 %>
            <input type="submit" value="Đăng nhập" class="form-submit">
             </br>
            
            <input type="submit" value="Đăng ký tài khoản " class="form-submit">
        </form>
    </div>
    
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="./app.js"></script>
</html>
