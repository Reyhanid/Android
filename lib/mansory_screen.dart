import 'package:flutter/material.dart';

class MansoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MANSORY')),
      body: Center(
        child: Text(
          'Details about MANSORY',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}