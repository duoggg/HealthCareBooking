/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.BenhNhanDao;
import dal.DichVuDao;
import dal.LichDatDao;
import dal.LichDatGoiDao;
import dal.LichLamViecDao;
import dal.ShowBS;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.BacSi;
import model.DichVu;

/**
 *
 * @author DELL
 */
@WebServlet(name="ConfirmService", urlPatterns={"/confirmservice"})
public class ConfirmService extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ConfirmService</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConfirmService at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       String namebn = request.getParameter("namebn");
       String sexbn = request.getParameter("sexbn");
       String phonebn = request.getParameter("phonebn");
       String birthbn = request.getParameter("birthdaybn");
       String addbn = request.getParameter("addressbn");
       String emailbn = request.getParameter("emailbn");
       String iddoc = request.getParameter("idser");
       String date =request.getParameter("date");
       String ca =request.getParameter("ship");
       String sub = request.getParameter("submit");
       
       if(sub.equals("Xác nhận")){
       int caInt = Integer.parseInt(ca);
       int idser = Integer.parseInt(iddoc);
        DichVuDao c = new DichVuDao();
        DichVu a = c.getDichVuById(idser);
         request.setAttribute("service", a);
          request.setAttribute("ca", ca);
           request.setAttribute("date", date);
         
        BenhNhanDao d = new BenhNhanDao();
        LichDatGoiDao ldd = new LichDatGoiDao();
        
        
        HttpSession session = request.getSession();
        String idBenhNhan = (String)session.getAttribute("myAccount");
       LichLamViecDao llvd = new LichLamViecDao();
              
        
        if(ldd.insert(idser,idBenhNhan,date,caInt)==1) response.sendRedirect("success.jsp");
        else {
            
            String messageError ="Đã hết chỗ hoặc bạn đã đặt lịch này! Xin lỗi quý khách!";
            request.setAttribute("error", messageError);
          request.getRequestDispatcher("confirmedservice.jsp").forward(request, response);
        }
        
        }
       else{
           response.sendRedirect("idlisser");
       }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
