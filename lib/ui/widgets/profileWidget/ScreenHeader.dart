import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  final String title;

  const ScreenHeader({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      color: Colors.cyan,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
