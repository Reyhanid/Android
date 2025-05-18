import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'news_screen.dart'; // Ensure this import is present
import 'profile_screen.dart'; // Ensure this import is present
import 'mansory_screen.dart'; // Import the MansoryScreen
import 'brabus_screen.dart'; // Import the BrabusScreen
import 'bike_screen.dart'; // Import the BikeScreen
import 'car_screen.dart'; // Import the CarScreen

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1; // 0: News, 1: Home, 2: Profile

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the corresponding screen using Get
    switch (index) {
      case 0:
        Get.to(() => NewsScreen());
        break;
      case 1:
      // stay on HomeScreen
        break;
      case 2:
        Get.to(() => ProfileScreen());
        break;
    }
  }

  final List<Map<String, String>> carBrands = [
    {'name': 'MANSORY', 'image': 'assets/mansory.png'},
    {'name': 'BRABUS', 'image': 'assets/bra.png'},
    {'name': 'BIKE', 'image': 'assets/h2roriginal.png'},
  ];

  Widget _buildCarCard(String name, String imagePath, Function onTap, bool reverseGradient) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: reverseGradient ? Alignment.centerRight : Alignment.centerLeft,
            end: reverseGradient ? Alignment.centerLeft : Alignment.centerRight,
            colors: [
              Colors.black, // meshki (black) from left or right
              Color(0xFF970D0D), // ghermez (red)
            ],
            stops: [0.0, 0.7], // gradient meshki ta 70% va ghermez baqimande
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imagePath,
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
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
        decoration: const BoxDecoration(color: Colors.black),
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: ListView(
          children: List.generate(carBrands.length + 1, (index) {
            if (index == carBrands.length) {
              // Card CARS
              return _buildCarCard('CARS', 'assets/porsche2.png', () {
                Get.to(() => CarScreen());
              }, index % 2 == 1);
            }
            final brand = carBrands[index];
            return _buildCarCard(
              brand['name']!,
              brand['image']!,
                  () {
                // Ta'ayin navigation bar asas name
                if (brand['name'] == 'MANSORY') {
                  Get.to(() => MansoryScreen());
                } else if (brand['name'] == 'BRABUS') {
                  Get.to(() => BrabusScreen());
                } else if (brand['name'] == 'BIKE') {
                  Get.to(() => BikeScreen());
                }
              },
              index % 2 == 1, // bar asas index gradient reverse mishavad
            );
          }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}