package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */



import dal.ShowBS;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.BacSi;

/**
 *
 * @author DELL
 */
@WebServlet(name="UpdateDoc", urlPatterns={"/uddoc"})
public class UpdateDoc extends HttpServlet {
   
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
            out.println("<title>Servlet UpdateDocServ</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateDocServ at " + request.getContextPath () + "</h1>");
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
        
        String id_raw = request.getParameter("id");
        try{
            String id = id_raw;
            ShowBS cdb = new ShowBS();
            BacSi c = cdb.getBacSiById(id);
            request.setAttribute("bacsi",c);
            request.getRequestDispatcher("UpdateDoc.jsp").forward(request, response);
        }catch(NumberFormatException e){
            System.out.println(e);
        }
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
        String id_raw = request.getParameter("id");
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        String special = request.getParameter("special");
        String year = request.getParameter("year");
        String room = request.getParameter("room");
        String sdt = request.getParameter("sdt");
        String email = request.getParameter("email");
        String link = request.getParameter("link");
      
        
       // String id = id_raw;
        int idspe = Integer.parseInt(special);
        int yearint = Integer.parseInt(year);
        //int roomint = Integer.parseInt(room);
        int phone = Integer.parseInt(sdt);
        try{
            //id= id_raw;
            ShowBS cdb = new ShowBS();
            //BacSi c = new BacSi(id,name,idspe,pass,yearint,room,phone,email,link);
            
                
                cdb.update(id_raw,name,pass,idspe,yearint,room,phone,email,link);
                response.sendRedirect("lisdoc");
                
                
            
            
            
        }catch(NumberFormatException e){
            System.out.println(e);
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
