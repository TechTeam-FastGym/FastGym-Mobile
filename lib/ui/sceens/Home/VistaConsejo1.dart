import 'package:flutter/material.dart';

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
                        'Consejos',
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_walk, color: Colors.black,size: 34,),
                SizedBox(width: 10),
                Text(
                  '8 Km',
                  style: TextStyle(
                    color: Color(0xFF0086BF),
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
              ],
            ),
          ),

          Image.asset(
            'assets/image/grafric.png',
            width: 80,
            height: 80,
          ),

          Text(
            'La recomendacion de hoy es:',
            style: TextStyle(
              color: Color(0xFF0086BF),
              fontSize: 15,
            ),
          ),

          // 4. un texto Color(0xFF0086BF) en bold tamaño 15
          Text(
            'Gatorade',
            style: TextStyle(
              color: Color(0xFF0086BF),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              Image.asset('assets/image/gatorade.png'),
              Text(
                'Si usted esta sediento ahora mismo, cómprelo ahora! si no lo está no falta mucho para tener que usarla',
                style: TextStyle(
                  color: Color(0xFF0086BF),
                  fontSize: 10,
                ),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF0086BF),
            ),
            child: Text(
              'Comprelo aqui',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 20),

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

