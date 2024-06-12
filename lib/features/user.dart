import 'package:fastgym_mobile/features/products.dart';
import '../ui/sceens/Feeding/Alimentacion.dart';

class Usuario
{
  final int id;
  final String nombre;
  final String email;
  String tipoUsuario;
  String plan;
  final List<ProductoDeportivo> carrito;

  Usuario({
    required this.id,
    required this.nombre,
    required this.email,
    required this.tipoUsuario,
    required this.plan,
    required this.carrito,
  });

  void agregarProductoAlCarrito(ProductoDeportivo producto) {
    carrito.add(producto);
  }

  void eliminarProductoDelCarrito(ProductoDeportivo producto) {
    carrito.remove(producto);
  }

}