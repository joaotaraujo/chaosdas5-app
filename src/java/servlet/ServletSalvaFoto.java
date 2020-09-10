package servlet;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class ServletSalvaFoto extends HttpServlet {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

   	response.setContentType("text/html");
        String nomeArquivo="";
        String file_name = null;
    	boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
      	 if (!isMultipartContent) {
      	 return;
      	 }
      	 FileItemFactory factory = new DiskFileItemFactory();
      	 ServletFileUpload upload = new ServletFileUpload(factory);
      	 try {
      	 List < FileItem > fields = upload.parseRequest(request);
      	 Iterator < FileItem > it = fields.iterator();
      	 if (!it.hasNext()) {
            return;
      	 }
      	 while (it.hasNext()) {
   	   	 FileItem fileItem = it.next();
   	   	 boolean isFormField = fileItem.isFormField();
   	   	 if (isFormField) {
   		   	if (file_name == null) {
   			   	 if (fileItem.getFieldName().equals("file_name")) {
   			   		file_name = fileItem.getString();
   			   	 }
   		   	 }	
   	   	 } else {
   		   	if (fileItem.getSize() > 0) {
                            nomeArquivo = fileItem.getName();
                            //fileItem.write(new File("/usr/local/apache-tomcat-8.0.27/webapps/orchidea/fotos/" + fileItem.getName()));
                            fileItem.write(new File("/home/joao/NetBeansProjects/orchidea/web/fotos/" + fileItem.getName()));
   		   	}
   	   	 }
      	 }
      	 } catch (Exception e) {
      	 } 
        
        //HttpSession sessao = request.getSession();
        
        //String usuarioFoto = sessao.getAttribute("nomeUsuario") +" "+nomeArquivo + "\n";
        //System.out.println("nomeUsuario "+ sessao.getAttribute("nomeUsuario") +" foto "+nomeArquivo);
        //Files.write(Paths.get("/home/joao/NetBeansProjects/orchidea/web/fotos/fotos.txt"), usuarioFoto.getBytes(), StandardOpenOption.APPEND);
         
        request.setAttribute("confirmacao", "<script>alert(\""+nomeArquivo+" anexado com sucesso!\");</script>");
                            
        RequestDispatcher dis = request.getRequestDispatcher("foto.jsp");
        dis.forward(request, response);

        

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }



}