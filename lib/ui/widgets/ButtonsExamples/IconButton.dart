import 'package:flutter/material.dart';

class CounterIconButton extends StatefulWidget {
  final double buttonHeight;
  final double buttonWidth;

  CounterIconButton({this.buttonHeight = 50.0, this.buttonWidth = 150.0});

  @override
  _CounterIconButtonState createState() => _CounterIconButtonState();
}

class _CounterIconButtonState extends State<CounterIconButton> {
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
          GestureDetector(
            onTap: () {
              setState(() {
                _counter--;
              });
            },
            child: Container(
              height: widget.buttonHeight,
              width: widget.buttonHeight,
              child: Icon(Icons.remove, color: Colors.white),
            ),
          ),
          Text(
            '$_counter',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _counter++;
              });
            },
            child: Container(
              height: widget.buttonHeight,
              width: widget.buttonHeight,
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(home: Scaffold(body: Center(child: CounterIconButton()))));
