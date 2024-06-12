import 'package:fastgym_mobile/features/feeding.dart';
import 'package:fastgym_mobile/ui/sceens/profile/profileScreen.dart';
import 'package:flutter/material.dart';

import '../../../features/user.dart';

class Alimentacion extends StatefulWidget {
  final Usuario usuario;
  const Alimentacion({Key? key, required this.usuario}) : super(key: key);

  @override
  State<Alimentacion> createState() => _AlimentacionState();
}

class _AlimentacionState extends State<Alimentacion> {

  int ind_TC=0;

  final List<String> img_food = ['assets/image/breakfast.png','assets/image/lunch.png','assets/image/dinner.png'];

  List<Alimentaciones> alimentos = [
    Alimentaciones(id: 1, nombre: "Ensalada", tipo: "Desayuno", proteina: 9, grasa: 3, azucares: 5),
    Alimentaciones(id: 2, nombre: "Salmon", tipo: "Desayuno", proteina: 8, grasa: 5, azucares: 1),
    Alimentaciones(id: 3, nombre: "Arroz", tipo: "Desayuno", proteina: 3, grasa: 1, azucares: 2),
    Alimentaciones(id: 4, nombre: "Aguacate", tipo: "Almuerzo", proteina: 2, grasa: 8, azucares: 1),
    Alimentaciones(id: 5, nombre: "Almendra", tipo: "Almuerzo", proteina: 5, grasa: 2, azucares: 6),
    Alimentaciones(id: 6, nombre: "Almendra", tipo: "Almuerzo", proteina: 3, grasa: 8, azucares: 4),
    Alimentaciones(id: 7, nombre: "Almendra", tipo: "Cena", proteina: 5, grasa: 7, azucares: 2),
    Alimentaciones(id: 8, nombre: "Almendra", tipo: "Cena", proteina: 3, grasa: 4, azucares: 8),
    Alimentaciones(id: 9, nombre: "Almendra", tipo: "Cena", proteina: 1, grasa: 5, azucares: 6),
  ];

  @override
  void initState() {
    super.initState();
    ind_TC = 0;
  }

  void change0() {
    setState(() {
      ind_TC = 0;
    });
  }
  void change1() {
    setState(() {
      ind_TC = 1;
    });
  }
  void change2() {
    setState(() {
      ind_TC = 2;
    });
  }

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Alimentacion',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.restaurant,
                            size: 25,
                            color: Colors.white,),
                        ],
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
                  top: 50,
                  right: 20,
                  child: Column(
                    children: [
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
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40,top: 20, right: 40,bottom: 0),
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
                crossAxisCount: 1,
                children: [
                  Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100, // Ancho del botón
                              child: ElevatedButton(
                                onPressed: change0,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero, // Elimina el padding interno del botón
                                  shape: CircleBorder(), // Forma circular
                                ),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: ind_TC==0 ? Color(0xFF00B2FF) : Color(0xFF0086BF), // Color de fondo del círculo
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/image/icon_egghardboiled.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),


                            Container(
                              width: 100, // Ancho del botón
                              child: ElevatedButton(
                                onPressed: change1,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero, // Elimina el padding interno del botón
                                  shape: CircleBorder(), // Forma circular
                                ),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: ind_TC==1 ? Color(0xFF00B2FF) : Color(0xFF0086BF), // Color de fondo del círculo
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/image/emoji_poultryleg.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),


                            Container(
                              width: 100, // Ancho del botón
                              child: ElevatedButton(
                                onPressed: change2,
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero, // Elimina el padding interno del botón
                                  shape: CircleBorder(), // Forma circular
                                ),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: ind_TC==2 ? Color(0xFF00B2FF) : Color(0xFF0086BF), // Color de fondo del círculo
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/image/illustration_Salad.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 70,top: 5, right: 0,bottom: 15),
                          child: Row(
                            children: [

                              Text('Desayuno', style: TextStyle(
                                  color: Color(0xFF0086BF),
                                  fontWeight: FontWeight.bold
                              ),),

                              SizedBox(width: 40,),

                              Text('Almuerzo', style: TextStyle(
                                  color: Color(0xFF0086BF),
                                  fontWeight: FontWeight.bold
                              ),),

                              SizedBox(width: 55,),

                              Text('Cena', style: TextStyle(
                                  color: Color(0xFF0086BF),
                                  fontWeight: FontWeight.bold
                              ),),

                            ],
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: Color(0xFF0086BF),
                            borderRadius: BorderRadius.circular(30), // Bordes circulares
                          ),
                          child: Text(
                            '${alimentos[ind_TC].nombre}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                              // La propiedad `backgroundColor` del `TextStyle` no es necesaria aquí porque usamos el `Container` para el fondo
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('${img_food[ind_TC]}',
                            width: 120,
                            height: 120,),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 0,top: 5, right: 0,bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width:70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Color(0xFF0086BF), // Color de fondo del círculo
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                    child: Center(
                                      child: Text('${alimentos[ind_TC].proteina}/10', style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    )
                                ),),

                              SizedBox(width: 30,),

                              Container(
                                width:70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Color(0xFF0086BF), // Color de fondo del círculo
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                    child: Center(
                                      child: Text('${alimentos[ind_TC].grasa}/10', style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    )
                                ),),

                              SizedBox(width: 30,),

                              Container(
                                width:70,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Color(0xFF0086BF), // Color de fondo del círculo
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                    child: Center(
                                      child: Text('${alimentos[ind_TC].azucares}/10', style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    )
                                ),),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 77,top: 5, right: 0,bottom: 0),
                          child: Row(
                            children: [

                              Text('Proteina', style: TextStyle(
                                  color: Color(0xFF0086BF),
                                  fontWeight: FontWeight.bold
                              ),),

                              SizedBox(width: 50,),

                              Text('Grasas', style: TextStyle(
                                  color: Color(0xFF0086BF),
                                  fontWeight: FontWeight.bold
                              ),),

                              SizedBox(width: 47,),

                              Text('Azucares', style: TextStyle(
                                  color: Color(0xFF0086BF),
                                  fontWeight: FontWeight.bold
                              ),),

                            ],
                          ),
                        ),
                      ]
                  )
                ],
              )
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