package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import  dto.Dao;

/**
 * Servlet implementation class AutenticacionServlet
 */
@WebServlet("/AutenticacionServlet")
public class AutenticacionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AutenticacionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String password = request.getParameter("contraseña");
        
        // Realizar la autenticación en la base de datos
        if (authenticateUser(username, password)) {
            request.getSession().setAttribute("username", username); // Almacena el nombre de usuario en la sesión
            
            response.sendRedirect("ventas.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    private boolean authenticateUser(String username, String password) {
        // Aquí debes implementar la lógica para autenticar al usuario en la base de datos.
        // Puedes usar la clase Dao que proporcionaste para obtener la conexión a la base de datos.

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            connection = new Dao().CrearConexion();
            String query = "SELECT * FROM usuario WHERE nombres = ? AND contraseña = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();

            return resultSet.next(); // Si encuentra un usuario con las credenciales proporcionadas, retorna true.

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            // Cerrar las conexiones y recursos
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
