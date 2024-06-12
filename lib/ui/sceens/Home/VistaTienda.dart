import 'package:fastgym_mobile/ui/sceens/Home/VistaCarrito.dart';
import 'package:flutter/material.dart';
import 'package:fastgym_mobile/features/products.dart';

class VistaTienda extends StatefulWidget {
  const VistaTienda({Key? key});

  @override
  State<VistaTienda> createState() => _VistaTiendaState();
}

class _VistaTiendaState extends State<VistaTienda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            color: Color(0xFF0086BF),
            height: 180,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Tienda',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1.2,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: Column(
                    children: [
                      Icon(Icons.person, size: 30, color: Colors.white),
                      SizedBox(height: 20),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VistaCarrito(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Colors.white,
                    ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF0086BF),
                hintText: 'Buscar',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),

          // Lista de Cards
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                productos.length, // numero de objetos
                (index) {
                  final producto = productos[index];
                  return Card(
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          producto.imagen,
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(height: 10),
                        Text(
                          producto.nombre,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              's/${producto.precio}', // Precio
                              style: TextStyle(
                                color: Colors.red, // Precio en rojo
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.add_circle, // Icono de +
                              size: 20,
                              color: Colors.blue, // Icono en azul
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }
              ),
            ),
          ),

          Container(
            width: double.infinity,
            color: Color(0xFF0086BF),
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: VistaTienda()));
