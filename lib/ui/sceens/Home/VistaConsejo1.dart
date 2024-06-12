import 'package:fastgym_mobile/ui/sceens/profile/profileScreen.dart';
import 'package:flutter/material.dart';

class VistaConsejo extends StatefulWidget {
  const VistaConsejo({Key? key});

  @override
  State<VistaConsejo> createState() => _VistaConsejoState();
}

class _VistaConsejoState extends State<VistaConsejo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                              builder: (context) => ProfileScreen(),
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
            width: 250,
            height: 85,
          ),

          Text(
            'La recomendacion de hoy es:',
            style: TextStyle(
              color: Color(0xFF0086BF),
              fontSize: 15,
            ),
          ),

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
              Icon(Icons.arrow_back,color: Color(0xFF0086BF)),
              Image.asset('assets/image/gatorade.png',width: 80),

              Container(
                width: 170,
                child: Text(
                  'Si usted está sediento ahora mismo, cómprelo ahora! Si no lo está, no falta mucho para tener que usarla',
                  style: TextStyle(
                    color: Color(0xFF0086BF),
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,
                ),
              ),

              Icon(Icons.arrow_forward,color: Color(0xFF0086BF)),
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
          SizedBox(height: 226.9),

          Container(
            width: double.infinity,
            height: 65.4,
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

void main() => runApp(MaterialApp(home: VistaConsejo()));