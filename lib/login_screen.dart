import 'dart:async';

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
              Colors.red,
            ],
          ),
        ),
        child: Column(
          children: [
            _buildCustomAppBar(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                      keyboardType: TextInputType.number,
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
                      keyboardType: TextInputType.number,
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
                    child: ElevatedButton(
                      onPressed: ( ){
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                        // Get.to(HomeScreen());
                        Get.off(HomeScreen());
                        // Get.offAll(HomeScreen()); for lot of page be for login
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          elevation: 5,
                          backgroundColor: Colors.white.withOpacity(0.6), //Set button color to gray
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          minimumSize: Size(30, 60)
                      ),
                      child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('don`t have an account?'),
                          SizedBox(width: 4,),
                          Text('sign up!',style: TextStyle(color:Colors.white.withOpacity(0.6),fontWeight: FontWeight.w500 ),),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(220.0),
      child: Container(
        padding: EdgeInsets.only(top: 50),
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