import 'package:fastgym_mobile/ui/sceens/Feeding/Alimentacion.dart';
import 'package:fastgym_mobile/ui/sceens/Home/homeScreen.dart';
import 'package:fastgym_mobile/ui/sceens/SignIn/loginScreen.dart';
import 'package:fastgym_mobile/ui/sceens/SignIn/registerScreen.dart';
import 'package:fastgym_mobile/ui/sceens/Welcome/welcomeScreen.dart';

import 'package:flutter/material.dart';

import 'features/user.dart';
void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Usuario usuario = Usuario(
      id: 1,
      nombre: 'John Doe',
      email: 'john.doe@example.com',
      tipoUsuario: '',
      plan: '',
      carrito: [],
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fast Gym',
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomeScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/home': (context) => TypeuserScreen(user: usuario),

          '/alimentacion': (context) => Alimentacion(usuario: usuario),
        });
  }
}
