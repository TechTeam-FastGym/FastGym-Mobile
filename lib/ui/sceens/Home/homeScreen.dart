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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              SizedBox(
                height: 25,
              ),

              Text('Elige tu tipo de usuario',
                  style: TextStyle(
                    color: Color(0xFF0086BF),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),


              Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/adult-run.jpg'),
                      radius: 100,
                    ),
                  ),

                  Text('Deportista',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/adult-bar.jpg'),
                      radius: 90,
                    ),
                  ),

                  Text('Fitness',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ],
              ),

              Container(
                width: double.infinity,
                height: 100,
                color: Color(0xFF0086BF),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
