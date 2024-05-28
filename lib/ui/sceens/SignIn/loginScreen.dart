import 'package:flutter/material.dart';

import '../../widgets/loginWidget/customTextFormFlield.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // se define una clave global para el formulario
  final _formKey = GlobalKey<FormState>();

  // se definen los controladores para los campos de texto
  // esto se hace para poder obtener el valor de los campos de texto
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  void _login() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Proceso de inicio de sesión
      print('Email: ${_emailController.text}, Password: ${_passwordController.text}');

      // Navega al "hogar" de la aplicación
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Inicia sesión',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 140, 255)),
                    ),
                    const Text(
                      '¡Bienvenido a FastGym!',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 0, 140, 255),
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextFormField(
                      labelText: 'Email',
                      icon: Icons.email,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingresa tu email';
                        } else if (!value.contains('@')) {
                          return 'Por favor ingresa un email válido';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _emailController.text = value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    CustomTextFormField(
                      labelText: 'Contraseña',
                      icon: Icons.lock,
                      obscureText: !_passwordVisible,
                      suffixIcon: IconButton(
                        icon: Icon(
                            _passwordVisible ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingresa tu contraseña';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _passwordController.text = value!;
                      },
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: _login,
                          child: const Text('Iniciar sesión'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 0, 140, 255)),
                              foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white))),
                    ),
                    Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: const Text('¿No tienes cuenta? Regístrate aquí'),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 0, 140, 255)))),
                    )
                  ]),
            ),
          ),
        ));
  }
}
