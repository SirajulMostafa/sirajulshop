package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.io.File;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.servlet.RequestDispatcher;


@WebServlet(description = "This Servelete work for Upload an Image", urlPatterns = { "/Fileupload" })
public class Fileupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String  image=null;
	private final String UPLOAD_DIRECTORY="C:/Users/siraj/Documents/workspace-sts-3.8.4.RELEASE/sirajulshop/WebContent/images/";
  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fileupload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    if (ServletFileUpload.isMultipartContent(request)) {     
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multiparts) {
                   if (!item.isFormField()) {                
                        image = new File(item.getName()).getName();                    
                       //  String key = UUID.randomUUID().toString();
                         //image= key+(image.substring(image.indexOf(".")));
                        item.write(new File(UPLOAD_DIRECTORY + File.separator + image));
                         
                    }                                    
                }
                 	out.println("File Upload successfully \n" + UPLOAD_DIRECTORY);
                  	out.println("Image: \n" + image);     	
					Class.forName("com.mysql.jdbc.Driver"); 
				    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sirajulshopjsp",
					"root",null); 
					Statement st= con.createStatement(); 
					ResultSet rs = null; 
					int i=st.executeUpdate("INSERT INTO test_table(image) VALUES ('"+image+"')"); 
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("success.jsp");
                    requestDispatcher.forward(request, response);        
                   // rs.close();
                   // st.close();
                   // con.close(); 
                    }
            catch (Exception e) {
            	out.println(" Something went wrong \n" + e);
            	}
            }
	}

}
