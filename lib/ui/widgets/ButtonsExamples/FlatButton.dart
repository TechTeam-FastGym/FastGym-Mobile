import 'package:flutter/material.dart';

class CounterFlatButton extends StatefulWidget {
  final double buttonHeight;
  final double buttonWidth;

  CounterFlatButton({this.buttonHeight = 50.0, this.buttonWidth = 150.0});

  @override
  _CounterFlatButtonState createState() => _CounterFlatButtonState();
}

class _CounterFlatButtonState extends State<CounterFlatButton> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.buttonHeight,
      width: widget.buttonWidth,
      decoration: BoxDecoration(
        color: Colors.blue,
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
            style: TextStyle(color: Colors.white, fontSize: 20),
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

void main() => runApp(MaterialApp(home: Scaffold(body: Center(child: CounterFlatButton()))));
