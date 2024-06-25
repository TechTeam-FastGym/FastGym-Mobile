import 'package:fastgym_mobile/features/products.dart';

class Usuario
{
  final int id;
  final String nombre;
  final String email;
  String tipoUsuario;
  String plan;
  final List<ProductoDeportivo> carrito;
  double money;

  Usuario({
    required this.id,
    required this.nombre,
    required this.email,
    required this.tipoUsuario,
    required this.plan,
    required this.carrito,
    this.money = 100.00,
  });

  void agregarProductoAlCarrito(ProductoDeportivo producto) {
    carrito.add(producto);
  }

  void eliminarProductoDelCarrito(ProductoDeportivo producto) {
    carrito.remove(producto);
  }

  void setMoney(double money){
    this.money=money;
  }

  double getMoney(){
    return this.money;
  }

}