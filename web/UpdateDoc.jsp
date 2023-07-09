<%-- 
    Document   : Update
    Created on : Apr 10, 2023, 12:30:47 AM
    Author     : DELL
--%>
<%@page import = "model.BacSi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update a new DocTor</h1>
        <h3 style ="color:red">${error}</h3>
        <%
            if(request.getAttribute("bacsi")!= null){
            BacSi i =(BacSi)request.getAttribute("bacsi");
            
            %>
            
        <form action ="uddoc" method ="post" width = "90%">
             ID : <input type = "text" readonly name ="id" value = "<%= i.getIDBacSi()%>"/><br/>
            enter Name :  <input type = "text" name ="name" value = "<%= i.getHoten()%>"/><br/> 
            enter Pass :  <input type = "text" name ="pass" value = "<%= i.getPassword()%>" /><br/> 
            enter Specialist :  <input type = "number" name ="special" value = "<%= i.getIDKhoa()%>"/><br/> 
            enter Dateofbirth :  <input type = "number" name ="year" value = "<%= i.getNamSinh()%>"/><br/> 
            enter Room :  <input type = "text" name ="room" value = "<%= i.getPhongKham()%>"/><br/> 
            enter Phone :  <input type = "number" name ="sdt" value = "<%= i.getSDT()%>"/><br/> 
            enter Email :  <input type = "text" name ="email" value = "<%= i.getEmail()%>"/><br/> 
            enter LinkImage :  <input type = "text" name ="link" value = "<%= i.getLink()%>"/><br/> 
            <input type = "submit" value ="SAVE"/><br/>
        </form>
            <%
            }
            %>
           
    </body>
</html>
