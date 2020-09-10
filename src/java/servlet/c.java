package servlet;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class c extends HttpServlet {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

   	response.setContentType("text/html");
        HttpSession sessao = request.getSession();
        response.setContentType("text/html");
        
           
        String fileName = "home/joao/Desktop/nomes.txt";

        // This will reference one line at a time
        String line = null;
        String nomes="<p>";
        try {
            // FileReader reads text files in the default encoding.
            FileReader fileReader = new FileReader(fileName);
            // Always wrap FileReader in BufferedReader.
            BufferedReader bufferedReader = new BufferedReader(fileReader);

            while((line = bufferedReader.readLine()) != null) {
                nomes+=line+"<p>";
            }
        }
        catch(Exception e){
        }
        sessao.setAttribute("nomes", nomes);
        
        RequestDispatcher dis = request.getRequestDispatcher("/creditos/index.jsp");
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