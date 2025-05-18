import 'package:car_catalogue/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Color(0xFF970D0D),
            ],
          ),
        ),
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 400,
              maxHeight: 600,
            ),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 20,
                  spreadRadius: 1,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildCustomAppBar(),
                SizedBox(height: 16),
                Text(
                  'This is a catalogue for choosing your dream car',
                  style: TextStyle(
                    fontFamily: 'RockThornRegular_0WmjG.otf',
                    fontSize: 20,
                    color: Color(0xFFe37923),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 48),
                _buildInputContainer(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(color: Color(0xFFe37923)),
                      border: UnderlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                _buildInputContainer(
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(color: Color(0xFFe37923)),
                      border: UnderlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(HomeScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      elevation: 5,
                      backgroundColor: Colors.white.withOpacity(0.6),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'don`t have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'sign up!',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCustomAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(150.0),
      child: Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.transparent,
        child: Column(
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                color: Color(0xFFe37923),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 10,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: ClipOval(
                child: SvgPicture.asset(
                  "assets/images/220110102[1].png.svg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputContainer({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: child,
    );
  }
}
