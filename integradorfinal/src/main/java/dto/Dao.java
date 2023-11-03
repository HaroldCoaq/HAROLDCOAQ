package dto;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;


public class Dao {

	public Connection CrearConexion() {
		InitialContext ctx = null;
		try {
			ctx = new InitialContext();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DataSource ds = null;
		try {
			ds = (DataSource)ctx.lookup("java:/jdbc/web");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		Connection snx = null;
		try {
			snx = ds.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  snx;
	}
	
	
	public void insertarProducto(String nombre, String tipo, double precio, int stock) {
        try (Connection con = CrearConexion();
             PreparedStatement pst = con.prepareStatement("INSERT INTO productos (nombre, tipo, precio, stock) VALUES (?, ?, ?, ?)")) {
            
            pst.setString(1, nombre);
            pst.setString(2, tipo);
            pst.setDouble(3, precio);
            pst.setInt(4, stock);
            
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void actualizarProducto(int id, String nombre, String tipo, double precio, int stock) {
        try (Connection con = CrearConexion();
             PreparedStatement pst = con.prepareStatement("UPDATE productos SET nombre=?, tipo=?, precio=?, stock=? WHERE id=?")) {
            
            pst.setString(1, nombre);
            pst.setString(2, tipo);
            pst.setDouble(3, precio);
            pst.setInt(4, stock);
            pst.setInt(5, id);
            
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void eliminarProducto(int id) {
        try (Connection con = CrearConexion();
             PreparedStatement pst = con.prepareStatement("DELETE FROM productos WHERE id=?")) {
            
            pst.setInt(1, id);
            
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Producto buscarProducto(int id) {
        try (Connection con = CrearConexion();
             PreparedStatement pst = con.prepareStatement("SELECT * FROM productos WHERE id=?")) {
            
            pst.setInt(1, id);
            
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                int idProducto = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String tipo = rs.getString("tipo");
                double precio = rs.getDouble("precio");
                int stock = rs.getInt("stock");
                
                return new Producto(idProducto, nombre, tipo, precio, stock);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    public List<Producto> obtenerProductos() {
        List<Producto> productos = new ArrayList<>();

        try (Connection con = CrearConexion();
             PreparedStatement pst = con.prepareStatement("SELECT * FROM productos")) {
            
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                String tipo = rs.getString("tipo");
                double precio = rs.getDouble("precio");
                int stock = rs.getInt("stock");

                Producto producto = new Producto(id, nombre, tipo, precio, stock);
                productos.add(producto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productos;
    }

    public List<Producto> buscarProductosVentas(String nombre, String tipo) {
        List<Producto> productos = new ArrayList<>();

        try (Connection con = CrearConexion();
             PreparedStatement pst = con.prepareStatement("SELECT * FROM productos WHERE nombre LIKE ? AND tipo LIKE ?")) {
            
            pst.setString(1, "%" + nombre + "%");
            pst.setString(2, "%" + tipo + "%");

            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombreProducto = rs.getString("nombre");
                String tipoProducto = rs.getString("tipo");
                double precio = rs.getDouble("precio");
                int stock = rs.getInt("stock");

                Producto producto = new Producto(id, nombreProducto, tipoProducto, precio, stock);
                productos.add(producto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productos;
    }

}



