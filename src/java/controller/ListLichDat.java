/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.BenhNhanDao;
import dal.LichDatDao;
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
import model.BenhNhan;
import model.LichDat;

/**
 *
 * @author DELL
 */
@WebServlet(name="ListLichDat", urlPatterns={"/listlichdat"})
public class ListLichDat extends HttpServlet {
   
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
            out.println("<title>Servlet ListLichDat</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListLichDat at " + request.getContextPath () + "</h1>");
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
        ShowBS c = new ShowBS();
        List<BacSi> list1 = c.getAll();
        BenhNhanDao bnd = new BenhNhanDao();
        List<BenhNhan> list2 = bnd.getAll();
        
        LichDatDao ldd = new LichDatDao();
        List<LichDat> list3 = ldd.getAll();
        
        int page,page2,page3,numberpage = 9;
        int size = list1.size();
        int size2 = list2.size();
        int size3 = list3.size();
        int number = (size%numberpage==0?(size/numberpage):((size/numberpage)+1));
        int number2 = (size2%numberpage==0?(size2/numberpage):((size2/numberpage)+1));
        int number3 = (size3%numberpage==0?(size3/numberpage):((size3/numberpage)+1));
       // String xpage = request.getParameter("page");
       String xpage2 = request.getParameter("page");
        
         int turn = 0;
        int turn2 = 0;
        int turn3 = 1;
//        if(xpage==null){
//            page =1;
//            page2 = 1;
//           
//        }else{
            page= 1;    //bs 
            page2 = 1; // bn
             page3 =Integer.parseInt(xpage2);
        //}
        int start; int end;
        start = (page-1)*numberpage;
        end = Math.min(page*numberpage,size);
        List<BacSi> listbs = c.getListByPage(list1, start, end);
        request.setAttribute("turn", turn);
        request.setAttribute("data", listbs);
        request.setAttribute("page",page );
        request.setAttribute("num",number);
       
        
            
//        int start2; int end2;
        start = (page2-1)*numberpage;
        end = Math.min(page2*numberpage,size2);
        List<BenhNhan> listbn = bnd.getListByPage(list2, start, end);
        request.setAttribute("turn2", turn2);
        request.setAttribute("data2", listbn);
        request.setAttribute("page2",page2 );
        request.setAttribute("num2",number2);
        
         start = (page3-1)*numberpage;
        end = Math.min(page3*numberpage,size3);
        List<LichDat> listld = ldd.getListByPage(list3, start, end);
        request.setAttribute("turn3", turn3);
        request.setAttribute("data3", listld);
        request.setAttribute("page3",page3 );
        request.setAttribute("num3",number3);
        request.getRequestDispatcher("admin.jsp").forward(request, response);
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
        processRequest(request, response);
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
