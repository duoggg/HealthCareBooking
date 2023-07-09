
<%@page import = "java.util.List"%>
<%@page import = "model.BenhNhan"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
            border-collapse: collapse;
            
            }
        </style>
        
        <script type = "text/javascript">
            function doDelete(id){
                if(confirm("are you sure to delete Doctor with id ="+id+"?")){
                    window.location= "delpa?id="+id; 
                }
            }
            </script>
    </head>
    <body>
    <h1>List of Patients</h1>
    <h3><a  href ="#">Add new</a> </h3>
        <table border ="1px" width = "90%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Username</th>
                <th>Password</th>
                
                <th>DateOfBirth</th>
                <th>Address</th>
                <th>Phone</th>
                
<!--                <th>Sex</th>-->
                <th>Email</th>
                <th>Sex</th>
<!--                <th>Image</th>-->
                
                
            </tr>
            <%
                //List<Category> list = (List<Category>) request.getAttribute("data");
                List<BenhNhan> list = (List<BenhNhan>) request.getAttribute("data");
                for(BenhNhan i:list){
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
                     <a href="#" onclick="doDelete('<%= id %>')">Delete</a>
                     <a href="udpa?id=<%=id%>">Update</a>
                 </td>
                
                 
             </tr>
                
                <%
                    } 
                    %>
        </table>
                    </body>
</html>