<%-- 
    Document   : confirmedbooking
    Created on : Jul 3, 2023, 11:54:41 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.BacSi"%>
<%@page import = "model.BenhNhan"%>
<%@page import = "dal.BenhNhanDao"%>

<!DOCTYPE html>
<html lang="en-US">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Thông tin đặt lịch khám </title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="./css/result.css">
   
  

</head>
<body>


<section class="account-form">

    <form name="f" action="confirm" method="post" >
      <h1>Thông tin đặt lịch khám</h1>
      <img src="ava.png" alt="" class="image">
      <h2>Thông tin bệnh Nhân </h2>
   <div class="infor">
      <div class="ima">
         <img src="doctor3.jpg" alt="" class="image2">
      </div>
       
        <%
//           if(request.getAttribute("doctor")!= null){
           String idpa = (String) session.getAttribute("myAccount");
           BenhNhanDao a = new BenhNhanDao();
           BenhNhan bn = a.getBenhNhanById(idpa);
           
            %>
      <div class="namegder">
          
      <p class="placeholder">Họ và tên</p>
      <input type="text" name="namebn" maxlength="50" value="<%=bn.getHoten()%>" class="box" required="Bạn chưa nhập tên">
      
      <p class="placeholder">Giới tính</p></br>
      <label class="container">Nam
      <input name="sexbn" type="radio" value="Nam"/>
      <label class="container">Nữ
      <input name="sexbn" type="radio" value="Nữ"/>
      
      <p class="placeholder">Số điện thoại</p>
      <input type="tel" name="phonebn" maxlength="50" value="<%=bn.getSDT()%>" required="Bạn chưa nhập sdt" class="box">
   </div>
      <div class="last_inform">
      <p class="placeholder">Năm sinh</p>
      <input type="number" name="birthdaybn" value="<%=bn.getNamSinh()%>" class="box">
      <p class="placeholder">Địa chỉ</p>
      <input type="address" name="addressbn" maxlength="50" value="<%=bn.getDiaChi()%>" class="box">
      <p class="placeholder">Email</p>
      <input type="email" name="emailbn" maxlength="50" value="<%=bn.getEmail()%>" class="box">
   </div>
      
   </div>
          <%
//           if(request.getAttribute("doctor")!= null){
            
            BacSi i =(BacSi)request.getAttribute("doctor");
            String c =(String)request.getAttribute("ca");
           
            String da =(String)request.getAttribute("date");
            String id = i.getIDBacSi();
            %>
      <h2>Thông tin đặt khám</h2>
      <div class="infor">
         <div class="ima">
            <img src=<%=i.getLink()%> alt="" class="image2">
         </div>
      
         <div class="day">
              
                 
                 
            <p class="placeholder"> <b>Họ và tên bác sĩ</b> </p>
            <input type="hidden" name="iddoc" value="<%=id%>">
         <input type="text" readonly name ="namedoc" value = "<%=i.getHoten()%>" maxlength="50" class="box">
         <p class="placeholder"><b>Số điện thoại bác sĩ</b></p>
         <input type="number" readonly name ="id" value = "<%=i.getSDT()%>" maxlength="50" class="box">
         </div>
         <div class="par3">
            <p class="placeholder">Ngày đặt khám</p>
            <input type="date" readonly name ="date" value = "<%=da%>" class="box">
            <p>Ca đặt khám</p>
            <input type="number" readonly name ="ship" value = "<%=c%>" class="box">
         </div>
      </div>
          
   </br>
 
   <!-- <section class="choose">
    <form action="https://httpbin.org/anything" method="post" >
       <label for="lang-select" style="font-size: 18px;"><b>Phương thức thanh toán:</b> </label>
       <select name="lang" id="lang-select">
       
           <option value="">--Hãy chọn một phương thức thanh toán--</option>
           <option value="Tiền mặt">Thanh toán bằng tiền mặt khi đến khám </option>
           <option value="Chuyển khoản">Thanh toán bằng chuyển khoản trả trước</option>
       </select>
      
   </form>
 </section> -->

    
  
   <section class="pthuc">
   <h2>Phương thức thanh toán </h2>
   <b><input  onclick="tien_mat()" value ="Bằng Tiền Mặt" class="btn2" readonly/></b>
   </br>
    <input onclick="pay()" class="btn2" value =" Bằng Tài Khoản"/>

   <p id="demo" class="out"></p>
   <%
                if(request.getAttribute("error")!=null){
                String error = (String)request.getAttribute("error"); 
                %>
                </br><!-- comment -->
                                </br><!-- comment -->
                </br><!-- comment -->
                </br><!-- comment -->

                <h2><%=error%></div></h2>
             <%   }
                 %>
   
   <input type="submit"   value="Xác nhận" name="submit" class="btn"readonly/>
   <input type="submit"   value="Huỷ" name="submit" class="btn"readonly/>
   </section>
        </form>
        

</section>

<!-- custom js file link  -->

<script src="./js/nhun.js"></script>
</body>
</html>
