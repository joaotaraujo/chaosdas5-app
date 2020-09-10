/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author joao
 */
@WebServlet(name = "ServletCarregaGaleria", urlPatterns = {"/ServletCarregaGaleria"})
public class ServletCarregaGaleria extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            File folder = new File("/home/joao/NetBeansProjects/orchidea/web/fotos/");
            File[] listOfFiles = folder.listFiles();
            
            String galeria ="";
            for (int i = 0; i < listOfFiles.length; i++) {
              if (listOfFiles[i].isFile()) {
                  galeria = galeria + "<div class=\"responsive\">\n" +
"                <div class=\"gallery\">\n" +
"                  <a target=\"_blank\" href=\"/orchidea/fotos/"+listOfFiles[i].getName()+"\">\n" +
"                    <img src=\"/orchidea/fotos/"+listOfFiles[i].getName()+"\" alt=\"Cinque Terre\" width=\"600\" height=\"400\">\n" +
"                  </a>\n" +
"                </div>\n" +
"            </div>";
               // System.out.println("File " + listOfFiles[i].getName());
              }
            }
            
            HttpSession sessao = request.getSession();
            sessao.setAttribute("fotos",galeria); 
            
            RequestDispatcher dis = request.getRequestDispatcher("fotos.jsp");
            dis.forward(request, response);
            /*
            <div class="responsive">
                <div class="gallery">
                  <a target="_blank" href="/orchidea/fotos/techtudo.jpg">
                    <img src="/orchidea/fotos/techtudo.jpg" alt="Cinque Terre" width="600" height="400">
                  </a>
                </div>
            </div>*/
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
