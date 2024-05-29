import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  final double buttonHeight;
  final double buttonWidth;

  CounterButton({this.buttonHeight = 35.0, this.buttonWidth = 110.0});

  @override
  _CounterButtonState createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.buttonHeight,
      width: widget.buttonWidth,
      decoration: BoxDecoration(
        color: Color(0xFF0086BF),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.remove, color: Colors.white),
            onPressed: () {
              setState(() {
                _counter--;
              });
            },
          ),
          Text(
            '$_counter',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          IconButton(
            icon: Icon(Icons.add, color: Colors.white),
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
          ),
        ],
      ),
    );
  }
}

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
                        'Carrito',
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
                      SizedBox(height: 20),
                      Icon(Icons.shopping_cart, size: 30, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF0086BF),
                hintText: 'Buscar',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset('assets/image/cielo.png', fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              's/2.50',
                              style: TextStyle(color: Colors.red, fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Agua Cielo',
                              style: TextStyle(color: Colors.blue, fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Spacer(),
                        CounterButton(),
                      ],
                    ),
                  ),
                ),
                // Agrega más tarjetas similares si es necesario
              ],
            ),
          ),
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

void main() => runApp(MaterialApp(home: UserProfile()));
