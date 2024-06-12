class ProductoDeportivo {
  final int id;
  final String nombre;
  final String descripcion;
  final double precio;
  final String categoria;
  final String imagen;

  ProductoDeportivo({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.categoria,
    required this.imagen,
  });
}

List<ProductoDeportivo> productos = [
  ProductoDeportivo(
    id: 1,
    nombre: 'Muñequera',
    descripcion: 'Muñequera Wilson negra',
    precio: 25.0,
    categoria: 'accesorio',
    imagen: 'assets/image/products/prod1.jpg',
  ),
  ProductoDeportivo(
    id: 2,
    nombre: 'Mancuerdas',
    descripcion: 'Mancuerdas negras 25Kg',
    precio: 48.9,
    categoria: 'accesorio',
    imagen: 'assets/image/products/prod1.jpeg',
  ),
  ProductoDeportivo(
    id: 3,
    nombre: 'Raqueta Tennis',
    descripcion: 'Raqueta marca Pequis Celeste',
    precio: 69.9,
    categoria: 'accesorio',
    imagen: 'assets/image/products/prod3.jpg',
  ),
  ProductoDeportivo(
    id: 4,
    nombre: 'Morralito A2A',
    descripcion: 'morralito negro marca TEM',
    precio: 79.9,
    categoria: 'accesorio',
    imagen: 'assets/image/products/prod6.jpg',
  ),
  ProductoDeportivo(
    id: 5,
    nombre: 'Guantes Nikke',
    descripcion: 'Guantes Nikke VectorMax',
    precio: 70.9,
    categoria: 'accesorio',
    imagen: 'assets/image/products/prod4.jpg',
  ),
  ProductoDeportivo(
    id: 6,
    nombre: 'Guantes Nikke',
    descripcion: 'Guantes Nikke Modelo 3Ber',
    precio: 70.9,
    categoria: 'accesorio',
    imagen: 'assets/image/products/prod5.jpg',
  ),

];