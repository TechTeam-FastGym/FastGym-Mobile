import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'menuScreen.dart';

class planScreen extends StatelessWidget {
  const planScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 25),
              Text(
                'Elige tu plan',
                style: TextStyle(
                  color: Color(0xFF0086BF),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 130,
                    icon: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/Flaco.jpg'),
                      radius: 65,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => menu(),
                        ),
                      );
                    },
                  ),
                  Text(
                    'Delgado',
                    style: TextStyle(
                      color: Color(0xFF979797),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 130,
                    icon: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/Medium.jpg'),
                      radius: 65,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => menu(),
                        ),
                      );
                    },
                  ),
                  Text(
                    'Medio',
                    style: TextStyle(
                      color: Color(0xFF979797),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 130,
                    icon: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/Fat.jpg'),
                      radius: 65,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => menu(),
                        ),
                      );
                    },
                  ),
                  Text(
                    'Grueso',
                    style: TextStyle(
                      color: Color(0xFF979797),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 80,
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
        ),
      ),
    );
  }
}
