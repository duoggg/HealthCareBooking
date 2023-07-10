/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DichVuDao;
import dal.ShowBS;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.BacSi;
import model.DichVu;

/**
 *
 * @author DELL
 */
@WebServlet(name="SearchSer", urlPatterns={"/searchser"})
public class SearchSer extends HttpServlet {
   
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
            out.println("<title>Servlet SearchSer</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchSer at " + request.getContextPath () + "</h1>");
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
        String nameser = request.getParameter("sername");
       DichVuDao sbs = new DichVuDao();
        List<DichVu> bs ;
       if(nameser!=null){
            bs = sbs.getDichVuByName(nameser);
           
    
           
       }
       else{
           bs = sbs.getAll();
           
       }
        int page,numberpage = 4;
         int size = bs.size();
         int number = (size%numberpage==0?(size/numberpage):((size/numberpage)+1));
//         String xpage2 = request.getParameter("page");
//           if(xpage2==null){
                 page =1;
            
           
//       }else{
//            page= Integer.parseInt(xpage2);    //bs 
//           
//        }
            int start; int end;
        start = (page-1)*numberpage;
        end = Math.min(page*numberpage,size);
         List<DichVu> listdv = sbs.getListByPage(bs, start, end);
         
        request.setAttribute("service", listdv);
        request.setAttribute("page",page );
        request.setAttribute("num",number);
        request.getRequestDispatcher("indexck.jsp").forward(request, response);
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
