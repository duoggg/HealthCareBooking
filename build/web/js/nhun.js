// let profile = document.querySelector('.header .flex .profile');

// document.querySelector('#user-btn').onclick = () =>{
//    profile.classList.toggle('active');
// }

// window.onscroll = () =>{
//    profile.classList.remove('active');
// }

// document.querySelectorAll('input[type="number"]').forEach(inputNumber => {
//    inputNumber.oninput = () =>{
//       if(inputNumber.value.length > inputNumber.maxLength) inputNumber.value = inputNumber.value.slice(0, inputNumber.maxLength);
//    };
// });

// function mydate()
// {
//   //alert("");
// document.getElementById("dt").hidden=false;
// document.getElementById("ndt").hidden=true;
// }
// function mydate1()
// {
//  d=new Date(document.getElementById("dt").value);
// dt=d.getDate();
// mn=d.getMonth();
// mn++;
// yy=d.getFullYear();
// document.getElementById("ndt").value=dt+"/"+mn+"/"+yy
// document.getElementById("ndt").hidden=false;
// document.getElementById("dt").hidden=true;
// }
function tien_mat()
{
     let x="Cảm ơn quý khách đã đặt lịch khám \n Chúng tôi sẽ liên hệ lại sớm cho bạn!!!";
     document.getElementById("demo").innerHTML=x;
}
function pay()
{
    let x="Số Tài Khoản: 1234576978 Ngân hàng: Vietcombank Tên tài khoản: Đỗ Thùy Dương"
    document.getElementById("demo").innerHTML=x;
    
}
