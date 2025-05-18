import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC72C41),
      appBar: AppBar(
        title: const Text(
          'wellcome',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xff800000),
        centerTitle: true,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // FlutterLogo(
            //   size: 100,
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            Text(
              'this is a catalogue for choosing your dream car',
              style: TextStyle( fontFamily:'RockThornRegular_0WmjG.otf' , fontSize: 20),
            ),
            SizedBox(
              height: 48,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // White background color
                borderRadius: BorderRadius.circular(8.0), // Radius of 8
                border: Border.all(
                  color: Colors.black38, // Optional: Add a border color
                  width: 2.0, // Optional: Border width
                ),
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white60),
                decoration: InputDecoration(
                  border: InputBorder.none, // Remove the default underline
                  contentPadding: EdgeInsets.symmetric(
                      horizontal:
                      16.0), // Add some padding inside the text field
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // White background color
                borderRadius: BorderRadius.circular(8.0), // Radius of 8
                border: Border.all(
                  color: Colors.black38, // Optional: Add a border color
                  width: 2.0, // Optional: Border width
                ),
              ),
              child:TextField(
                keyboardType : TextInputType.number,
                style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  border: InputBorder.none, // Remove the default underline
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.0 ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity, // Make the button fill the available width
              child: ElevatedButton(
                onPressed: () {
                  // nothing
                },
                child:  Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
