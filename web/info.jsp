
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "dal.BenhNhanDao"%>
<%@page import = "model.BenhNhan"%>
<%--<%@page import = "java.util.List"%>
<%@page import = "model.BacSi"%>
<%@page import = "dal.ShowBS"%>--%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Thông tin cá nhân</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="./css/style.css">

</head>
<body>


<section class="account-form">

   <form action="datadat" method="post">
      <h3>Thông tin cá nhân</h3>
        <%
//           if(request.getAttribute("doctor")!= null){
           String idpa = (String) session.getAttribute("myAccount");
           BenhNhanDao a = new BenhNhanDao();
           BenhNhan bn = a.getBenhNhanById(idpa);
           
            %>
      
      <img src="ava.png" alt="" class="image">
      <p class="placeholder">Họ và tên</p>
      <input type="text" name="name" maxlength="50" value="<%=bn.getHoten()%>" placeholer="" class="box"/>
      <p class="placeholder">Số điện thoại</p>
      <input type="text" name="phone" maxlength="50" value="<%=bn.getSDT()%>" class="box">
      <p class="placeholder">Ngày sinh</p>
      <input type="number" name="birthday" value="<%=bn.getNamSinh()%>" class="box">
      <p class="placeholder">Giới tính</p>
      <input type="text" name="sex" maxlength="50" value="<%=bn.getGioiTinh()%>" required="Bạn chưa nhập sdt" class="box">
<!--      <label class="container">Nam
      <input name = "sex" type = "radio" value="Nam"/>
      <label class="container">Nữ
      <input name = "sex" type = "radio" value="Nữ"/>-->
      <p class="placeholder">Địa chỉ</p>
      <input type="address" name = "address" maxlength="50" value="<%=bn.getDiaChi()%>" class="box">
      <p class="placeholder">Email</p>
      <input type="email" name = "email" maxlength="50" value="<%=bn.getEmail()%>" class="box">
      <input type="submit", value="Cập nhật" class="btn">
   </form>

</section>

<!-- custom js file link  -->


</body>
</html>