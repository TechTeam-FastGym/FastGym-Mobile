import 'package:fastgym_mobile/features/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'menuScreen.dart';

class planScreen extends StatelessWidget {

  final Usuario usuario;

  const planScreen({super.key, required this.usuario});

  void _setPlan(String plan, BuildContext context) {
    usuario.plan = plan;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => menu(usuario: usuario),
      ),
    );
  }

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
                    onPressed: () => _setPlan('Delgado', context),
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
                    onPressed: () => _setPlan('Medio', context),
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
                    onPressed: () => _setPlan('Grueso', context),
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
