import 'package:fastgym_mobile/ui/sceens/Feeding/Alimentacion.dart';
import 'package:fastgym_mobile/ui/sceens/Home/VistaConsejo1.dart';
import 'package:fastgym_mobile/ui/sceens/Home/VistaTienda.dart';
import 'package:fastgym_mobile/ui/sceens/profile/profileScreen.dart';
import 'package:flutter/material.dart';

import '../../../features/user.dart';

class menu extends StatefulWidget {

  final Usuario usuario;

  const menu({Key? key, required this.usuario}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    color: Color(0xFF0086BF),
                    width: double.infinity,
                    height: 150,
                    child: Center(child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [

                            SizedBox(
                              width: 200,
                            ),

                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileScreen(usuario: widget.usuario),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.person_pin,
                                size: 50,
                                color: Colors.white,

                              ),
                            ),
                          ],
                        ),

                        Text('Bienvenido ${widget.usuario.nombre}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        Divider(
                          color: Colors.white,
                          thickness: 1.2,
                          indent: 20,
                          endIndent: 20,
                        ),
                      ],

                    )),
                  ),

                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VistaTienda(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.add_shopping_cart_sharp,
                          size: 80,
                          color: Color(0xFF0086BF),
                        ),
                      ),

                      Text('Tienda',
                        style: TextStyle(
                          color: Color(0xFF0086BF),
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Alimentacion(usuario: widget.usuario),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.fastfood_rounded,
                          size: 80,
                          color: Color(0xFF0086BF),
                        ),
                      ),

                      Text('Alimentacion',
                        style: TextStyle(
                          color: Color(0xFF0086BF),
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  Column(
                    children: [

                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VistaConsejo(usuario: widget.usuario),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.book_outlined,
                          size: 80,
                          color: Color(0xFF0086BF),
                        ),
                      ),

                      Text('Consejos',
                        style: TextStyle(
                          color: Color(0xFF0086BF),
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  Container(
                    width: double.infinity,
                    height: 65,
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
              )
          )
      ),
    );
  }
}