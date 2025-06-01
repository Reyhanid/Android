
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'category_list.dart';

void main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    // Log or handle the error details
  };
  WidgetsFlutterBinding.ensureInitialized();
  // await di.init()
  runApp(
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home : Scaffold(
      //   body: ,
      // )
      debugShowCheckedModeBanner: false,
      title: 'Car Catalogue',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: LoginScreen(),
    );
  }
}
