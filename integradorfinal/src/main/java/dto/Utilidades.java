package dto;

import java.util.List;

public class Utilidades {

    public static double calcularTotal(List<Producto> carrito) {
        double total = 0.0;
        if (carrito != null && !carrito.isEmpty()) {
            for (Producto producto : carrito) {
                total += producto.getPrecio();
            }
        }
        return total;
    }
}
