import 'products.dart';

class Carrito {
  final List<ProductoDeportivo> items = [];
  final Map<int, int> _productQuantities = {};

  void agregarProducto(ProductoDeportivo producto) {
    if (_productQuantities.containsKey(producto.id)) {
      _productQuantities[producto.id] = _productQuantities[producto.id]! + 1;
    } else {
      items.add(producto);
      _productQuantities[producto.id] = 1;
    }
  }

  void actualizarProducto(ProductoDeportivo producto, int cantidad) {
    if (cantidad > 0) {
      _productQuantities[producto.id] = cantidad;
    } else {
      removerProducto(producto);
    }
  }

  void removerProducto(ProductoDeportivo producto) {
    items.removeWhere((item) => item.id == producto.id);
    _productQuantities.remove(producto.id);
  }

  int get totalItems => items.length;

  int getCantidad(ProductoDeportivo producto) {
    return _productQuantities[producto.id] ?? 0;
  }
}
