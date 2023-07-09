<%-- 
    Document   : Update
    Created on : Apr 10, 2023, 12:30:47 AM
    Author     : DELL
--%>
<%@page import = "model.BenhNhan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update a new Patient</h1>
        <h3 style ="color:red">${error}</h3>
        <%
            if(request.getAttribute("benhnhan")!= null){
            BenhNhan i =(BenhNhan)request.getAttribute("benhnhan");
            
            %>
            
        <form action ="udpa" method ="post" width = "90%">
             ID : <input type = "text" readonly name ="id" value = "<%= i.getIDBenhNhan()%>"/><br/>
            enter Name :  <input type = "text" name ="name" value = "<%= i.getHoten()%>"/><br/> 
            enter Username :  <input type = "text" name ="username" value = "<%= i.getUsername()%>"/><br/> 
            enter Pass :  <input type = "text" name ="pass" value = "<%= i.getPassword()%>"/><br/> 
            enter Dateofbirth :  <input type = "number" name ="year" value = "<%= i.getNamSinh()%>"/><br/> 
             enter Address :  <input type = "text" name ="address" value = "<%= i.getDiaChi()%>"/><br/> 
              enter Phone :  <input type = "number" name ="sdt" value = "<%= i.getSDT()%>"/><br/> 
              enter Email :  <input type = "text" name ="email" value = "<%= i.getEmail()%>"/><br/>
            enter Sex :  <input type = "text" name ="sex" value = "<%= i.getGioiTinh()%>"/><br/> 
           
            <input type = "submit" value ="SAVE"/><br/>
        </form>
            <%
            }
            %>
           
    </body>
</html>
