
<%@page import = "java.util.List"%>
<%@page import = "model.BacSi"%>


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
        </style>
        
        <script type = "text/javascript">
            function doDelete(id){
                if(confirm("are you sure to delete Doctor with id ="+id+"?")){
                    window.location= "deldoc?id="+id; 
                }
            }
            function click(id){
                document.myForm
            }
            </script>
    </head>
    <body>
    <h1>List of Doctors</h1>
    <h3><a  href ="#">Add new</a> </h3>
    
    
       <%  
//                int p=   (int)request.getAttribute("page");
//                int num = (int)request.getAttribute("num");
        %>
        <div class="pagination">
            <%
                for(int i =1;i<=num;i++){
                %>
                <a href="lisdoc?page=<%=i%>"><%=i%></a>
                <%
                    }
                %>
            
        </div>
    
        <table border ="1px" width = "90%">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Password</th>
                <th>IDSpecialist</th>
                <th>DateOfBirth</th>
                <th>Room</th>
                <th>Phone</th>
<!--                <th>Sex</th>-->
                <th>Email</th>
                <th>Image</th>
                
                
            </tr>
            <%
                //List<Category> list = (List<Category>) request.getAttribute("data");
//                List<BacSi> list = (List<BacSi>) request.getAttribute("data");
                ShowBS c = new ShowBS();
        List<BacSi> list = c.getAll();
                for(BacSi i:list){
                    String id = i.getIDBacSi();
                
             %>
             
             <tr>
                 <td><%= i.getIDBacSi()%></td>
                 <td><%= i.getHoten()%></td>
                 <td><%= i.getPassword()%></td>
                 <td><%= i.getIDKhoa()%></td>
                 
                 <td><%= i.getNamSinh()%></td>
                 <td><%= i.getPhongKham()%></td>
                 <td><%= i.getSDT()%></td>
                 <td><%= i.getEmail()%></td>
                 <td><%= i.getLink()%></td>
                 <td>
                     <a href="#" onclick="doDelete('<%= id %>')">Delete</a>
                     <a href="uddoc?id=<%=id%>">Update</a>
                 </td>
                
                 
             </tr>
                
                <%
                    } 
                    %>
        </table>
                    </body>
</html>