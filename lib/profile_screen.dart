import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';
import 'news_screen.dart';
import 'yourdesign_screen.dart';
import 'aboutus_screen.dart';
import 'creditcard_screen.dart';
import 'customercare_screen.dart';
import 'setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Get.to(() => NewsScreen());
        break;
      case 1:
        Get.to(() => HomeScreen());
        break;
      case 2:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      endDrawer: Drawer( // <-- Changed to endDrawer for right-side drawer
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Menu',
                  style: TextStyle(color: Colors.black, fontSize: 24)),
              decoration: BoxDecoration(color: Color(0xFF970D0D)),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () => Get.to(() => SettingsScreen()),
            ),
            ListTile(
              title: Text('Credit Card'),
              onTap: () => Get.to(() => CreditCardScreen()),
            ),
            ListTile(
              title: Text('Customer Care'),
              onTap: () => Get.to(() => CustomerCareScreen()),
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () => Get.to(() => AboutUsScreen()),
            ),
            ListTile(
              title: Text('Your Design'),
              onTap: () => Get.to(() => YourDesignScreen()),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Colors.black,
              Color(0xFF970D0D),
            ],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 80, horizontal: 16),
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.png'),
                backgroundColor: Colors.grey[300],
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Username123',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
              child: Divider(color: Colors.white70, thickness: 1),
            ),
            Center(
              child: Text(
                'UserID: 987654321',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(height: 32),
            Text(
              "Today's Mode",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _modeButton('Happy', Colors.green),
                _modeButton('At Work', Colors.blue),
                _modeButton('Relaxed', Colors.orange),
                _modeButton('Busy', Colors.red),
              ],
            ),
            SizedBox(height: 32),
            Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            _dashboardItem(Icons.favorite, 'Favorite', () {}),
            _dashboardItem(Icons.drafts, 'Drafts', () {}),
            _dashboardItem(Icons.lock, 'Privacy', () {}),
            _dashboardItem(Icons.notifications, 'Notifications', () {}),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xFF970D0D),
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

  Widget _modeButton(String text, Color color) {
    return ElevatedButton(
      onPressed: () {
        Get.snackbar('Mode Selected', text,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: color.withOpacity(0.8),
            colorText: Colors.white);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(text),
    );
  }

  Widget _dashboardItem(IconData icon, String title, VoidCallback onTap) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      margin: EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: TextStyle(color: Colors.white)),
        onTap: onTap,
        trailing:
        Icon(Icons.arrow_forward_ios, color: Colors.white54, size: 16),
      ),
    );
  }
}
