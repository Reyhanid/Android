import 'package:flutter/material.dart';

class BikeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BIKE')),
      body: Center(
        child: Text(
          'Details about BIKE',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}