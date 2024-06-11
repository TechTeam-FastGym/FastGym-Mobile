import 'package:flutter/material.dart';
import 'CustomButton.dart';
import 'ScreenHeader.dart';

class UploadImageScreen extends StatelessWidget {
  const UploadImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ScreenHeader(title: 'Perfil'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Se recomienda usar imágenes en formato png además de dimensiones 1:1 no mayor a 250Mbytes',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Vista previa',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Recorte automático',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: Center(
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Subir imagen',
              onPressed: () {
                // Acción al presionar el botón
              },
            ),
            CustomButton(
              text: 'Guardar',
              onPressed: () {
                // Acción al presionar el botón
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
