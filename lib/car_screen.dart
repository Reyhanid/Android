
import 'package:flutter/material.dart';

class CarScreen extends StatefulWidget {
  @override
  _CarScreenState createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  final List<Map<String, String>> carBrands = [
    {
      'name1': 'BUGATTI',
      'name2': 'MASERATI',
      'image1': 'assets/bugatti.png',
      'image2': 'assets/mazerati.png'
    },
    {
      'name1': 'FERRARI',
      'name2': 'PORSCHE',
      'image1': 'assets/ferrari.png',
      'image2': 'assets/porsche.png'
    },
    {
      'name1': 'ROLLS ROYCE',
      'name2': 'MERCEDES BENZ',
      'image1': 'assets/rollsroyce.png',
      'image2': 'assets/benz.png'
    },
    {
      'name1': 'ALPHA ROMEO',
      'name2': 'ASTON MARTIN',
      'image1': 'assets/alpharomeo.png',
      'image2': 'assets/astonmartin.png'
    },
    {
      'name1': 'BENTLEY',
      'name2': 'BMW',
      'image1': 'assets/bently.png',
      'image2': 'assets/bmw.png'
    },
    {
      'name1': 'CADILLAC',
      'name2': 'CHEVROLET',
      'image1': 'assets/cadilac.png',
      'image2': 'assets/cheverlet.png'
    },
    {
      'name1': 'CORVETTE',
      'name2': 'DODGE',
      'image1': 'assets/corvette.png',
      'image2': 'assets/dodge.png'
    },
    {
      'name1': 'HYUNDAI',
      'name2': 'JAGUAR',
      'image1': 'assets/hyundai.png',
      'image2': 'assets/jaguar.png'
    },
    {
      'name1': 'LAMBORGHINI',
      'name2': 'LAND ROVER',
      'image1': 'assets/lamborghini.png',
      'image2': 'assets/landrover.png'
    },
    {
      'name1': 'LEXUS',
      'name2': 'MC LOREN',
      'image1': 'assets/lexus.png',
      'image2': 'assets/mclaren.png'
    },
    {
      'name1': 'NISSAN',
      'name2': 'PAGANI',
      'image1': 'assets/nissan.png',
      'image2': 'assets/pagani.png'
    },
    {
      'name1': 'TOYOTA',
      'name2': 'AUDI',
      'image1': 'assets/toyota.png',
      'image2': 'assets/audi.png'
    },
  ];

  Widget _buildCarCard(String name, String imagePath,
      {bool nameOnLeft = true}) {
    return Container(
      width: 180,
      height: 85,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Colors.white, Colors.grey],
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          children: nameOnLeft
              ? [
            // Text expands to take available space
            Expanded(
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: 85,
                height: 85,
                fit: BoxFit.cover,
              ),
            ),
          ]
              : [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Color(0xFF970D0D)],
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(carBrands.length, (index) {
              final brand = carBrands[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCarCard(
                      brand['name1']!,
                      brand['image1']!,
                      nameOnLeft: true,
                    ),
                    SizedBox(width: 20),
                    _buildCarCard(
                      brand['name2']!,
                      brand['image2']!,
                      nameOnLeft: false,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
