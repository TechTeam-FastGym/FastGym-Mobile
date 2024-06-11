import 'package:fastgym_mobile/ui/sceens/Feeding/Alimentacion.dart';
import 'package:fastgym_mobile/ui/sceens/Home/homeScreen.dart';
import 'package:fastgym_mobile/ui/sceens/SignIn/loginScreen.dart';
import 'package:fastgym_mobile/ui/sceens/SignIn/registerScreen.dart';
import 'package:fastgym_mobile/ui/sceens/Welcome/welcomeScreen.dart';

import 'package:flutter/material.dart';
void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fast Gym',
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomeScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/home': (context) => TypeuserScreen(),

          '/alimentacion': (context) => Alimentacion(),
        });
  }
}
