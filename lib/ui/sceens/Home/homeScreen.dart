import 'package:fastgym_mobile/ui/sceens/Home/planScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypeuserScreen extends StatefulWidget {
  const TypeuserScreen({super.key});

  @override
  State<TypeuserScreen> createState() => _TypeuserScreen();
}

class _TypeuserScreen extends State<TypeuserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Elige tu tipo de usuario',
                style: TextStyle(
                  color: Color(0xFF0086BF),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  IconButton(
                    iconSize: 200,
                    icon: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/adult-run.jpg'),
                      radius: 100,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => planScreen(),
                        ),
                      );
                    },
                  ),
                  Text(
                    'Deportista',
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
                    iconSize: 180,
                    icon: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/adult-bar.jpg'),
                      radius: 90,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => planScreen(),
                        ),
                      );
                    },
                  ),
                  Text(
                    'Fitness',
                    style: TextStyle(
                      color: Color(0xFF979797),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void main() => runApp(MaterialApp(home: TypeuserScreen()));