/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.BenhNhanDao;
import dal.LichDatDao;
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
import model.LichDat;

/**
 *
 * @author DELL
 */
@WebServlet(name="ConFirm", urlPatterns={"/confirm"})
public class ConFirm extends HttpServlet {
   
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
            out.println("<title>Servlet ConFirm</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConFirm at " + request.getContextPath () + "</h1>");
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
       String iddoc = request.getParameter("iddoc");
       String date =request.getParameter("date");
       String ca =request.getParameter("ship");
       String sub = request.getParameter("submit");
       
       if(sub.equals("Xác nhận")){
       int caInt = Integer.parseInt(ca);
       
        ShowBS c = new ShowBS();
        BacSi a = c.getBacSiById(iddoc);
         request.setAttribute("doctor", a);
          request.setAttribute("ca", ca);
           request.setAttribute("date", date);
         
        BenhNhanDao d = new BenhNhanDao();
        LichDatDao ldd = new LichDatDao();
        
        
        HttpSession session = request.getSession();
        String idBenhNhan = (String)session.getAttribute("myAccount");
       LichLamViecDao llvd = new LichLamViecDao();
               int idLich = llvd.getLichLamViecID(iddoc,date , caInt);
        
        if(ldd.insert(idBenhNhan,idLich)==1) response.sendRedirect("success.jsp");
        else {
            
            String messageError ="Đã hết chỗ! Xin lỗi quý khách!";
            request.setAttribute("error", messageError);
          request.getRequestDispatcher("confirmedbooking.jsp").forward(request, response);
        }
        
        }
       else{
           response.sendRedirect("homepage.jsp");
       }
//        request.getRequestDispatcher("indexdr.jsp").forward(request, response);
  
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
