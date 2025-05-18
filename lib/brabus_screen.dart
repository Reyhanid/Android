import 'package:flutter/material.dart';

class BrabusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BRABUS')),
      body: Center(
        child: Text(
          'Details about BRABUS',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}