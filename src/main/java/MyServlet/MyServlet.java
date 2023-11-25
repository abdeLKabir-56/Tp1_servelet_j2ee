package MyServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class MyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public MyServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	response.setContentType("text/html");
    	PrintWriter out = response.getWriter();
        String civilite = request.getParameter("civilite");
        String CP = request.getParameter("CP");
        String ville = request.getParameter("ville");
        String nom_famille = request.getParameter("nom_famille");
        String Prenom = request.getParameter("Prenom");
        String adresse = request.getParameter("adresse");
        String Naissance = request.getParameter("naissance");
        String Mail = request.getParameter("mail");
        String Telephone = request.getParameter("Telephone");
       
        try {
        	
        	
        	Class.forName("com.mysql.jdbc.Driver");
            
            //creating connection with the database 
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbetudiants", "root", "abc123abc");
            System.out.println("connected succefully");
            String query = "insert into etudiant values (?,?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = conn.prepareStatement(query);

            preparedStatement.setString(1, civilite);
            preparedStatement.setString(2, ville);
            preparedStatement.setString(3, nom_famille);
            preparedStatement.setString(4, Prenom);
            preparedStatement.setString(5, adresse);
            preparedStatement.setString(6, CP);
            preparedStatement.setString(7, Naissance);
            preparedStatement.setString(8, Mail);
            preparedStatement.setString(9, Telephone);

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
            	request.getRequestDispatcher("login.jsp").forward(request, response);  
                out.write("Registration successful");
            } else {
                out.write("Registration failed");
            }
        } catch (Exception e) {
           // out.write("Error in database: " + e.getMessage());
        	e.printStackTrace();
        }
}
}