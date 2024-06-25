import 'package:fastgym_mobile/features/user.dart';
import 'package:flutter/material.dart';
import 'package:fastgym_mobile/features/products.dart';
import 'package:fastgym_mobile/features/carrito.dart';

class CounterButton extends StatefulWidget {
  final double buttonHeight;
  final double buttonWidth;
  final void Function(int) onChanged;
  final int initialValue;

  CounterButton({this.buttonHeight = 35.0, this.buttonWidth = 110.0, required this.onChanged, this.initialValue = 0});

  @override
  _CounterButtonState createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      widget.onChanged(_counter);
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
        widget.onChanged(_counter);
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.buttonHeight,
      width: widget.buttonWidth,
      decoration: BoxDecoration(
        color: Color(0xFF0086BF),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.remove, color: Colors.white),
            onPressed: _decrementCounter,
          ),
          Text(
            '$_counter',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          IconButton(
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: _incrementCounter,
          ),
        ],
      ),
    );
  }
}

class VistaCarrito extends StatefulWidget {
  final Usuario usuario;
  final Carrito carrito;

  const VistaCarrito({Key? key, required this.usuario, required this.carrito}) : super(key: key);

  @override
  State<VistaCarrito> createState() => _VistaCarritoState();
}

class _VistaCarritoState extends State<VistaCarrito> {
  double precioTotal=0.00;


  void _payTotal(){
    precioTotal=0.00;
    int tamanio = widget.carrito.totalItems;
    for (var i = 0; i < tamanio; i++){
      final producto = widget.carrito.items[i];
      final cant = widget.carrito.getCantidad(producto);

      precioTotal=precioTotal+producto.precio*cant;
    }
  }

  void _updateProductQuantity(ProductoDeportivo producto, int cantidad) {
    setState(() {
      widget.carrito.actualizarProducto(producto, cantidad);
    });
  }

  @override
  Widget build(BuildContext context) {

    _payTotal();

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
                        'Carrito',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 4,
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
                      Icon(Icons.shopping_cart, size: 30, color: Colors.white),
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
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: widget.carrito.totalItems,
              itemBuilder: (context, index) {
                final producto = widget.carrito.items[index];
                final cantidad = widget.carrito.getCantidad(producto);

                return Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 0,
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(producto.imagen, fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  's/${producto.precio}',
                                  style: TextStyle(color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  producto.nombre,
                                  style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            CounterButton(
                              initialValue: cantidad,
                              onChanged: (cantidad) {
                                _updateProductQuantity(producto, cantidad);
                              },
                            ),

                          ],
                        ),
                      ),
                    ),
                    //PAY BUTTON
                    if(index==  widget.carrito.totalItems-1)
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Text('TOTAL:', style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),),
                            Spacer(),
                            Text('${precioTotal}', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),)
                          ],
                        ),
                      ),
                    if(index==  widget.carrito.totalItems-1)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: (){
                              showModalBottomSheet(
                                // para pantalla completa -> isScrollControlled: true,
                                context: context,
                                builder: (context)=>
                                    buildMessagePay(widget.usuario,precioTotal),);
                            },
                            child: Text("Pagar", style: TextStyle(
                              fontSize: 20,
                            ),)),
                      ),
                    if(index==  widget.carrito.totalItems-1)
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Saldo: ${widget.usuario.money}", style: TextStyle(
                            fontSize: 20,
                          ),)
                      )
                  ],
                );
              },
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

buildMessagePay(Usuario usuario, double precio) {

  double saldoRestante = usuario.getMoney() - precio;
  if(saldoRestante >= 0.00) usuario.setMoney(saldoRestante);

  return Container(
      width: 500,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [

            SizedBox(height: 20,),

            if(saldoRestante >= 0.00)
              Text('Pago Exitoso', style: TextStyle(
                fontSize: 25
              ),)
            else
              Text('Saldo Insuficiente', style: TextStyle(
                  fontSize: 25
              ),),


          ],
        ),
      ),
    );
}


