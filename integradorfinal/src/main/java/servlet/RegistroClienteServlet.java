package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.DtoClienteNuevo;
import dto.Dao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistroClienteServlet
 */
@WebServlet("/RegistroClienteServlet")
public class RegistroClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroClienteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");

        DtoClienteNuevo clienteNuevo = new DtoClienteNuevo(nombres, apellidos, correo, contraseña);
        Dao dao = new Dao();
        Connection conn = dao.CrearConexion();

        try {
            // Insertar el nuevo cliente en la base de datos
            String sql = "INSERT INTO usuario (nombres, apellidos, correo, contraseña) VALUES (?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, clienteNuevo.getNombres());
            statement.setString(2, clienteNuevo.getApellidos());
            statement.setString(3, clienteNuevo.getCorreo());
            statement.setString(4, clienteNuevo.getContraseña());
            statement.executeUpdate();
            
            // Redirigir a una página de éxito o mostrar un mensaje de éxito
            response.sendRedirect("login.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            // Manejar errores, redirigir a una página de error, etc.
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
